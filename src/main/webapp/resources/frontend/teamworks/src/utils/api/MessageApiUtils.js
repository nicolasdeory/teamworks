import axios from "axios";
import { API_URL } from "../../config/config";
import ApiUtils from "./ApiUtils";
const MESSAGE_URL = "/message";

const MessageApiUtils = {
  /*Inboxes*/
  getMyInboxMessages: () => ApiUtils.get(MESSAGE_URL + "/inbox"),
  getMySentMessages: () => ApiUtils.get(MESSAGE_URL + "/sent"),

  getNumberOfNoOpenedMessages: (tagId) =>
    ApiUtils.get(MESSAGE_URL + "/noOpened?tagId=" + tagId),

  /*Messages*/
  newMessage: (message) => ApiUtils.post(MESSAGE_URL, message),
  replyMessage: (message, repliedMessageId) =>
    ApiUtils.post(
      MESSAGE_URL + "?repliedMessageId=" + repliedMessageId,
      message
    ),
  forwardMessage: (forwardList, repliedMessageId) =>
    ApiUtils.post(
      MESSAGE_URL +
        "?repliedMessageId=" +
        repliedMessageId +
        "&forward=true",
      forwardList
    ),
  markMessageAsRead: (messageId) =>
    ApiUtils.post(MESSAGE_URL + "/markAsRead?messageId=" + messageId),
};

export default MessageApiUtils;
