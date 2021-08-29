.class public Lcom/samsung/android/mdecservice/entitlement/commandcontract/CommandContract;
.super Ljava/lang/Object;
.source "CommandContract.java"


# static fields
.field public static final KEY_ACTIVE_SERVICES:Ljava/lang/String; = "ACTIVE_SERVICES"

.field public static final KEY_ADD_PROVISIONED_DEVICE_TO_LINE:Ljava/lang/String; = "ADD_PROVISIONED_DEVICE_TO_LINE"

.field public static final KEY_APPLICATION_DATA:Ljava/lang/String; = "APPLICATION_DATA"

.field public static final KEY_CMC_VERSION:Ljava/lang/String; = "CMC_VERSION"

.field public static final KEY_CMD:Ljava/lang/String; = "CMD"

.field public static final KEY_DEVICE_ACTIVE:Ljava/lang/String; = "DEVICE_ACTIVE"

.field public static final KEY_DEVICE_DATA_ACTIVATION:Ljava/lang/String; = "DEVICE_DATA_ACTIVATION"

.field public static final KEY_DEVICE_DATA_ACTIVATION_CONTROL:Ljava/lang/String; = "DEVICE_DATA_ACTIVATION_CONTROL"

.field public static final KEY_DEVICE_DATA_CALL_ACTIVATION:Ljava/lang/String; = "DEVICE_DATA_CALL_ACTIVATION"

.field public static final KEY_DEVICE_DATA_HASHED_BT_MAC:Ljava/lang/String; = "DEVICE_DATA_HASHED_BT_MAC"

.field public static final KEY_DEVICE_DATA_HASHED_DEVICE_ID:Ljava/lang/String; = "DEVICE_DATA_HASHED_DEVICE_ID"

.field public static final KEY_DEVICE_DATA_IS_CELLULAR_DEVICE:Ljava/lang/String; = "DEVICE_DATA_IS_CELLULAR_DEVICE"

.field public static final KEY_DEVICE_DATA_MESSAGE_ACTIVATION:Ljava/lang/String; = "DEVICE_DATA_MESSAGE_ACTIVATION"

.field public static final KEY_DEVICE_DATA_MIGRATE_DEVICE:Ljava/lang/String; = "DEVICE_DATA_MIGRATE_DEVICE"

.field public static final KEY_DEVICE_DATA_NATIVE_ACTIVITY_NAME:Ljava/lang/String; = "DEVICE_DATA_NATIVE_ACTIVITY_NAME"

.field public static final KEY_DEVICE_DATA_NATIVE_PACKAGE_NAME:Ljava/lang/String; = "DEVICE_DATA_NATIVE_PACKAGE_NAME"

.field public static final KEY_DEVICE_DATA_PD_BT_MAC:Ljava/lang/String; = "DEVICE_DATA_PD_BT_MAC"

.field public static final KEY_DEVICE_DATA_REMOVE_CONTROL:Ljava/lang/String; = "DEVICE_DATA_REMOVE_CONTROL"

.field public static final KEY_DEVICE_DATA_RESPECTIVE_CONTROL:Ljava/lang/String; = "DEVICE_DATA_RESPECTIVE_CONTROL"

.field public static final KEY_DEVICE_DATA_STR:Ljava/lang/String; = "DEVICE_DATA_STR"

.field public static final KEY_DEVICE_DATA_STR_TYPE:Ljava/lang/String; = "DEVICE_DATA_STR_TYPE"

.field public static final KEY_DEVICE_DATA_SUPPORT_CALL_FORKING:Ljava/lang/String; = "DEVICE_DATA_SUPPORT_CALL_FORKING"

.field public static final KEY_DEVICE_DATA_SUPPORT_CALL_LOG_SYNC:Ljava/lang/String; = "DEVICE_DATA_SUPPORT_CALL_LOG_SYNC"

.field public static final KEY_DEVICE_DATA_SUPPORT_MSG_SYNC:Ljava/lang/String; = "DEVICE_DATA_SUPPORT_MSG_SYNC"

.field public static final KEY_DEVICE_DATA_VERSION:Ljava/lang/String; = "DEVICE_DATA_VERSION"

.field public static final KEY_DEVICE_ID:Ljava/lang/String; = "DEVICE_ID"

.field public static final KEY_DEVICE_MODEL:Ljava/lang/String; = "DEVICE_MODEL"

.field public static final KEY_DEVICE_NAME:Ljava/lang/String; = "DEVICE_NAME"

.field public static final KEY_DEVICE_PUSH_TOKEN:Ljava/lang/String; = "DEVICE_PUSH_TOKEN"

.field public static final KEY_DEVICE_PUSH_TYPE:Ljava/lang/String; = "DEVICE_PUSH_TYPE"

.field public static final KEY_DEVICE_TYPE:Ljava/lang/String; = "DEVICE_TYPE"

.field public static final KEY_EVT_TYPE:Ljava/lang/String; = "EVT_TYPE"

.field public static final KEY_GUID:Ljava/lang/String; = "GUID"

.field public static final KEY_INCLUDE_DEVICE_CONUTING:Ljava/lang/String; = "INCLUDE_DEVICE_COUNTING"

.field public static final KEY_LINE_ACTIVE:Ljava/lang/String; = "LINE_ACTIVE"

.field public static final KEY_LINE_ID:Ljava/lang/String; = "LINE_ID"

.field public static final KEY_LINE_NAME:Ljava/lang/String; = "LINE_NAME"

.field public static final KEY_LINE_OWNER_DEVICE_ID:Ljava/lang/String; = "LINE_OWNER_DEVICE_ID"

.field public static final KEY_MDEC_SUPPORTED_FOR_WATCH:Ljava/lang/String; = "MDEC_SUPPORTED_FOR_WATCH"

.field public static final KEY_MIGRATE_SOURCE_LINE_ID:Ljava/lang/String; = "MIGRATE_SOURCE_LINE_ID"

.field public static final KEY_MIGRATE_SOURCE_LINE_VERSION:Ljava/lang/String; = "MIGRATE_SOURCE_LINE_VERSION"

.field public static final KEY_MIGRATE_TARGET_LINE_VERSION:Ljava/lang/String; = "MIGRATE_TARGET_LINE_VERSION"

.field public static final KEY_MSISDN:Ljava/lang/String; = "MSISDN"

.field public static final KEY_PROVISIONED_DEVICE_LIST:Ljava/lang/String; = "PROVISIONED_DEVICE_LIST"

.field public static final KEY_REASON:Ljava/lang/String; = "REASON"

.field public static final KEY_REASON_CODE:Ljava/lang/String; = "REASON_CODE"

.field public static final KEY_REMANENT_DEVICES:Ljava/lang/String; = "REMANENT_DEVICES"

.field public static final KEY_REMOVE_CONDITION:Ljava/lang/String; = "REMOVE_CONDITION"

.field public static final KEY_REMOVE_MIGRATE_SOURCE_LINE:Ljava/lang/String; = "REMOVE_MIGRATE_SOURCE_LINE"

.field public static final KEY_TYPE:Ljava/lang/String; = "TYPE"

.field public static final VALUE_CMD_ADDDEVICE:Ljava/lang/String; = "adddevice"

.field public static final VALUE_CMD_ADDLINE:Ljava/lang/String; = "addline"

.field public static final VALUE_CMD_ADD_PROVISIONED_DEVICE:Ljava/lang/String; = "addprovisioneddevice"

.field public static final VALUE_CMD_GETUSERINFO:Ljava/lang/String; = "getuserinfo"

.field public static final VALUE_CMD_GET_ALL_INFORMATION:Ljava/lang/String; = "getallinformation"

.field public static final VALUE_CMD_GET_PROVISIONED_DEVICE:Ljava/lang/String; = "getprovisioneddevices"

.field public static final VALUE_CMD_MIGRATELINE:Ljava/lang/String; = "migrateline"

.field public static final VALUE_CMD_REGISTER_PDP_AGREEMENT:Ljava/lang/String; = "registerpdpagreement"

.field public static final VALUE_CMD_REMOVEDEVICE:Ljava/lang/String; = "removedevice"

.field public static final VALUE_CMD_REMOVELINE:Ljava/lang/String; = "removeline"

.field public static final VALUE_CMD_REMOVE_PROVISIONED_DEVICE:Ljava/lang/String; = "removeprovisioneddevice"

.field public static final VALUE_CMD_UPDATEDEVICEINFO:Ljava/lang/String; = "updatedeviceinfo"

.field public static final VALUE_CMD_UPDATELINEINFO:Ljava/lang/String; = "updatelineinfo"

.field public static final VALUE_EVT_TYPE_NOTIFICATION:I = 0x1

.field public static final VALUE_EVT_TYPE_RESPONSE:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
