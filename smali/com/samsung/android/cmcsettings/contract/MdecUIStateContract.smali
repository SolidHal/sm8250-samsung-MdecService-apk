.class public interface abstract Lcom/samsung/android/cmcsettings/contract/MdecUIStateContract;
.super Ljava/lang/Object;
.source "MdecUIStateContract.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.samsung.android.mdecservice.provider.MdecUIStateProvider"

.field public static final CODE_MDEC_UI_STATE_KEY:I = 0x1

.field public static final MDEC_KEY_VALUE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MDEC_SETTINGS_KEY_CMC_ACTIVATION_INTERMEDIATE:I = 0x65

.field public static final MDEC_SETTINGS_KEY_CMC_COUNTRY_CODE:I = 0x69

.field public static final MDEC_SETTINGS_KEY_CMC_NETWORK_TYPE_FOR_SLOT_ID_0:I = 0x6b

.field public static final MDEC_SETTINGS_KEY_CMC_NETWORK_TYPE_FOR_SLOT_ID_1:I = 0x6c

.field public static final MDEC_SETTINGS_KEY_CMC_QUEUE_LENGTH:I = 0x66

.field public static final MDEC_SETTINGS_KEY_CMC_REFRESH_TILE:I = 0x67

.field public static final MDEC_SETTINGS_KEY_CMC_SIM_SELECTED_FOR_DATA_CHANGED:I = 0x68

.field public static final MDEC_SETTINGS_KEY_CMC_SIM_SKIP_CHECK:I = 0x6d

.field public static final MDEC_SETTINGS_KEY_CMC_SLOT_SELECTED_FOR_JOINING:I = 0x6a

.field public static final URI_MDEC_UI_STATE:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.android.mdecservice.provider.MdecUIStateProvider/mdec_Ui_States"

    .line 1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcsettings/contract/MdecUIStateContract;->URI_MDEC_UI_STATE:Landroid/net/Uri;

    .line 2
    new-instance v0, Lcom/samsung/android/cmcsettings/contract/MdecUIStateContract$1;

    invoke-direct {v0}, Lcom/samsung/android/cmcsettings/contract/MdecUIStateContract$1;-><init>()V

    sput-object v0, Lcom/samsung/android/cmcsettings/contract/MdecUIStateContract;->MDEC_KEY_VALUE_MAP:Ljava/util/Map;

    return-void
.end method
