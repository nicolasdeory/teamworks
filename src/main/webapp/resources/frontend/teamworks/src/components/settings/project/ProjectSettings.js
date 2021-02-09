import { useEffect } from "react";
import { useContext, useState } from "react/cjs/react.development";
import UserCredentials from "../../../context/UserCredentials";
import DepartmentApiUtils from "../../../utils/api/DepartmentApiUtils";
import ProjectApiUtils from "../../../utils/api/ProjectApiUtils";
import Spinner from "../../spinner/Spinner";
import SettingGroup from "../SettingGroup";
import ProjectsContainer from "./ProjectsContainer";

const ProjectSettings = () =>
{
  const credentials = useContext(UserCredentials);
  function retrieveDepartments()
  {
    let func = credentials.isTeamManager ? DepartmentApiUtils.getDepartments : DepartmentApiUtils.getMyDepartments;
    func()
      .then(dpts =>
      {
        Promise.all(dpts.map(d => ProjectApiUtils.getProjects(d.id)))
          .then(projects =>
          {
            for (let i = 0; i < projects.length; i++)
            {
              const proj = projects[i];
              dpts[i].projects = proj;
            }
            setDepartments(dpts);
          });
      })
      .catch((err) => console.error(err));
  }

  const [departments, setDepartments] = useState(null);
  useEffect(() =>
  {
    retrieveDepartments();
  }, []);

  if (!departments)
  {
    return (
      <div className="SettingGroupsContainer">
        <SettingGroup
          name="Manage projects"
          description=" ">
          <Spinner />
        </SettingGroup>
      </div>
    );
  } else
  {
    return (
      <div className="SettingGroupsContainer">
        <SettingGroup
          name="Manage projects"
          description=" ">
          <ProjectsContainer departments={departments} onProjectAdded={retrieveDepartments} onProjectDeleted={retrieveDepartments} />
        </SettingGroup>
      </div>
    );
  }

};

export default ProjectSettings;
