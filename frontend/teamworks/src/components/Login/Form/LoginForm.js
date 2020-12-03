import React from "react";
import { login } from "../../../utils/api/authApiUtils";
import LSInput from "./LSInput";
import SubmitButton from "./SubmitButton";

class LoginForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      inputs: {
        mail: "",
        password: "",
      },
      errors: {},
    };
  }

  hasErrors = () => {
    let errors = Object.values(this.state.errors);
    let b =
      errors.length === 0
        ? true
        : errors.some((e) => {
            return e !== "";
          });
    console.log("hasErrors? ", b);
    return b;
  };

  validateAll = () => {
    console.log("Validating ALL");
    Object.entries(this.state.inputs).forEach((e) => {
      const [k, v] = e;
      console.log(k);
      console.log(v);
      this.validate(k, v);
    });
  };

  validate = (field, value) => {
    console.log("Validating: ", field, value);
    let errorMsg = "";
    switch (field) {
      case "mail":
        if (value === "") {
          errorMsg = "Mail required";
        } else if (
          !/^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@+[a-zA-Z0-9-]/.test(value)
        ) {
          errorMsg = "Invalid Mail";
        }

        this.setState({
          errors: { ...this.state.errors, mail: errorMsg },
        });
        break;

      case "password":
        if (value === "") {
          errorMsg = "Password required";
        } else if (value.length < 8) {
          errorMsg = "Passwords are larger";
        }
        console.log(this.state.errors.password);
        this.setState({
          errors: { ...this.state.errors, password: errorMsg },
        });
        console.log(this.state.errors.password);
        break;
      default:
    }
  };

  changeHandler = (event) => {
    let field = event.target.name;
    let value = event.target.value;
    this.validate(field, value);
    this.setState({ inputs: { [field]: value } });
  };

  submitHandler = (event) => {
    event.preventDefault();
    this.validateAll();
    if (!this.hasErrors()) {
      let mail = this.state.inputs.mail;
      let password = this.state.inputs.password;
      //Call API request in order to receive the user for the session
      login({ mail, password });
    } else {
      console.log("There are errors in this form");
      console.log(this.state.errors);
    }
  };

  render() {
    return (
      <form onSubmit={this.submitHandler}>
        <LSInput
          name="mail"
          type="text"
          placeholder="name@team"
          styleClass="inputLogin"
          error={this.state.errors.mail}
          changeHandler={this.changeHandler}
        />
        <LSInput
          name="password"
          type="password"
          placeholder="HardToGuessPassword"
          styleClass="inputLogin"
          error={this.state.errors.password}
          changeHandler={this.changeHandler}
        />
        <SubmitButton value="Sign in" hasErrors={this.hasErrors()} />
      </form>
    );
  }
}

export default LoginForm;
