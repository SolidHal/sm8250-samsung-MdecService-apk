.class public Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants;
.super Ljava/lang/Object;
.source "SettingsInternalApiConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$ServiceType;,
        Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$AppType;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.samsung.android.mdec.provider.setting"

.field public static final CONTENT_URI:Ljava/lang/String; = "content://com.samsung.android.mdec.provider.setting"

.field public static final ERROR_REASON:Ljava/lang/String; = "error_reason"

.field public static final INVALID_REQUEST:Ljava/lang/String; = "invalid_request"

.field public static final METHOD_GET_ACTIVATIONS:Ljava/lang/String; = "get_activations"

.field public static final METHOD_GET_CALL_ALLOWED_SD_BY_PD:Ljava/lang/String; = "get_call_allowed_sd_by_pd"

.field public static final METHOD_GET_CMC_ACTIVATION:Ljava/lang/String; = "get_cmc_activation"

.field public static final METHOD_GET_CMC_SUPPORTED:Ljava/lang/String; = "get_cmc_supported"

.field public static final METHOD_GET_DEVICE_CATEGORY:Ljava/lang/String; = "get_device_category"

.field public static final METHOD_GET_DEVICE_ID_LIST:Ljava/lang/String; = "get_device_id_list"

.field public static final METHOD_GET_DEVICE_INFO:Ljava/lang/String; = "get_device_info"

.field public static final METHOD_GET_DEVICE_NAME:Ljava/lang/String; = "get_device_name"

.field public static final METHOD_GET_DEVICE_TYPE:Ljava/lang/String; = "get_device_type"

.field public static final METHOD_GET_FRE:Ljava/lang/String; = "get_fre"

.field public static final METHOD_GET_LINE_ACTIVE_SIM_SLOT:Ljava/lang/String; = "get_line_active_sim_slot"

.field public static final METHOD_GET_LINE_ID:Ljava/lang/String; = "get_line_id"

.field public static final METHOD_GET_LINE_IMPU:Ljava/lang/String; = "get_line_impu"

.field public static final METHOD_GET_LINE_INFO:Ljava/lang/String; = "get_line_info"

.field public static final METHOD_GET_LINE_MSISDN:Ljava/lang/String; = "get_line_msisdn"

.field public static final METHOD_GET_LINE_NMS_ADDR_LIST:Ljava/lang/String; = "get_line_nms_addr_list"

.field public static final METHOD_GET_LINE_PCSCF_ADDR_LIST:Ljava/lang/String; = "get_line_pcscf_addr_list"

.field public static final METHOD_GET_MESSAGE_ALLOWED_SD_BY_PD:Ljava/lang/String; = "get_message_allowed_sd_by_pd"

.field public static final METHOD_GET_OWN_ACTIVATION_TIME:Ljava/lang/String; = "get_own_activation_time"

.field public static final METHOD_GET_OWN_CALL_ACTIVATION_TIME:Ljava/lang/String; = "get_own_call_activation_time"

.field public static final METHOD_GET_OWN_DEVICE_ID:Ljava/lang/String; = "get_own_device_id"

.field public static final METHOD_GET_OWN_DEVICE_NAME:Ljava/lang/String; = "get_own_device_name"

.field public static final METHOD_GET_OWN_DEVICE_TYPE:Ljava/lang/String; = "get_own_device_type"

.field public static final METHOD_GET_OWN_MESSAGE_ACTIVATION_TIME:Ljava/lang/String; = "get_own_message_activation_time"

.field public static final METHOD_GET_OWN_NETWORK_MODE:Ljava/lang/String; = "get_own_network_mode"

.field public static final METHOD_GET_OWN_SERVICE_VERSION:Ljava/lang/String; = "get_own_service_version"

.field public static final METHOD_GET_PD_DEVICE_NAME:Ljava/lang/String; = "get_pd_device_name"

.field public static final METHOD_GET_SA_INFO:Ljava/lang/String; = "get_sa_info"

.field public static final METHOD_GET_WATCH_ACTIVATION:Ljava/lang/String; = "get_watch_activation"

.field public static final METHOD_GET_WATCH_REGISTERED:Ljava/lang/String; = "get_watch_registered"

.field public static final METHOD_GET_WATCH_SUPPORTED:Ljava/lang/String; = "get_watch_supported"

.field public static final METHOD_OPEN_CMC_SETTING_MENU:Ljava/lang/String; = "open_cmc_setting_menu"

.field public static final METHOD_VER_V1:Ljava/lang/String; = "v1"

.field public static final PARAM_AUTO_ACTIVATION:Ljava/lang/String; = "auto_activation"

.field public static final PARAM_BT_MAC_ID:Ljava/lang/String; = "bt_mac_address"

.field public static final PARAM_DEVICE_ID:Ljava/lang/String; = "device_id"

.field public static final RESPONSE_CMC_ACTIVATION:Ljava/lang/String; = "cmc_activation"

.field public static final RESPONSE_CMC_CALL_ACTIVATION:Ljava/lang/String; = "cmc_call_activation"

.field public static final RESPONSE_CMC_MESSAGE_ACTIVATION:Ljava/lang/String; = "cmc_message_activation"

.field public static final RESPONSE_DEVICES:Ljava/lang/String; = "devices"

.field public static final RESPONSE_LINES:Ljava/lang/String; = "lines"

.field public static final RESPONSE_NETWORK_MODE:Ljava/lang/String; = "network_mode"

.field public static final RESPONSE_SAINFO:Ljava/lang/String; = "sainfo"

.field public static final RESPONSE_WATCH_ACTIVATION:Ljava/lang/String; = "watch_activation"

.field public static final RESULT:Ljava/lang/String; = "result"

.field public static final RESULT_FAIL:I = 0x0

.field public static final RESULT_OK:I = 0x1

.field public static final RET_ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field public static final RET_CMC_ACTIVATION:Ljava/lang/String; = "cmc_activation"

.field public static final RET_CMC_SUPPORTED:Ljava/lang/String; = "cmc_supported"

.field public static final RET_DEVICE_ACTIVATION:Ljava/lang/String; = "activation"

.field public static final RET_DEVICE_CALL_ACTIVATION:Ljava/lang/String; = "call_activation"

.field public static final RET_DEVICE_CALL_ALLOWED_SD_BY_PD:Ljava/lang/String; = "call_allowed_sd_by_pd"

.field public static final RET_DEVICE_CATEGORY:Ljava/lang/String; = "device_category"

.field public static final RET_DEVICE_ID_LIST:Ljava/lang/String; = "device_id_list"

.field public static final RET_DEVICE_MESSAGE_ACTIVATION:Ljava/lang/String; = "message_activation"

.field public static final RET_DEVICE_MESSAGE_ALLOWED_SD_BY_PD:Ljava/lang/String; = "message_allowed_sd_by_pd"

.field public static final RET_DEVICE_NAME:Ljava/lang/String; = "device_name"

.field public static final RET_DEVICE_PD_DEVICE_NAME:Ljava/lang/String; = "pd_device_name"

.field public static final RET_DEVICE_TYPE:Ljava/lang/String; = "device_type"

.field public static final RET_FRE:Ljava/lang/String; = "Fre"

.field public static final RET_LINE_ACTIVE_SIM_SLOT:Ljava/lang/String; = "active_sim_slot"

.field public static final RET_LINE_ID:Ljava/lang/String; = "line_id"

.field public static final RET_LINE_IMPU:Ljava/lang/String; = "impu"

.field public static final RET_LINE_MSISDN:Ljava/lang/String; = "msisdn"

.field public static final RET_LINE_NMS_ADDR_LIST:Ljava/lang/String; = "nms_addr_list"

.field public static final RET_LINE_PCSCF_ADDR_LIST:Ljava/lang/String; = "pcscf_addr_list"

.field public static final RET_NETWORK_MODE:Ljava/lang/String; = "network_mode"

.field public static final RET_OWN_ACTIVATION_TIME:Ljava/lang/String; = "own_activation_time"

.field public static final RET_OWN_CALL_ACTIVATION_TIME:Ljava/lang/String; = "own_call_activation_time"

.field public static final RET_OWN_DEVICE_ID:Ljava/lang/String; = "own_device_id"

.field public static final RET_OWN_DEVICE_NAME:Ljava/lang/String; = "own_device_name"

.field public static final RET_OWN_DEVICE_TYPE:Ljava/lang/String; = "own_device_type"

.field public static final RET_OWN_MESSAGE_ACTIVATION_TIME:Ljava/lang/String; = "own_message_activation_time"

.field public static final RET_OWN_SERVICE_VERSION:Ljava/lang/String; = "own_service_version"

.field public static final RET_SAMSUNG_USER_ID:Ljava/lang/String; = "samsung_user_id"

.field public static final RET_WATCH_ACTIVATION:Ljava/lang/String; = "watch_activation"

.field public static final RET_WATCH_REGISTER:Ljava/lang/String; = "watch_register"

.field public static final RET_WATCH_SUPPORTED:Ljava/lang/String; = "watch_supported"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
