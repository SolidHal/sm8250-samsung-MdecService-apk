.class public Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;
.super Lcom/samsung/android/mdecservice/nms/attribute/Attribute;
.source "CallLogAttribute.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;
    }
.end annotation


# static fields
.field public static final ATTR_CALLTYPE_MMS:Ljava/lang/String; = "mms"

.field public static final ATTR_CALLTYPE_SMS:Ljava/lang/String; = "sms"

.field public static final ATTR_CALLTYPE_VIDEO:Ljava/lang/String; = "video"

.field public static final ATTR_CALLTYPE_VOICE:Ljava/lang/String; = "voice"

.field public static final ATTR_CALLTYPE_VOLTE:Ljava/lang/String; = "volte"

.field public static final ATTR_DISP_ANSWERED_EXTERNALLY:Ljava/lang/String; = "ANSWERED_EXTERNALLY"

.field public static final ATTR_DISP_AUTOREJECTED:Ljava/lang/String; = "AUTOREJECTED"

.field public static final ATTR_DISP_INCOMING:Ljava/lang/String; = "INCOMING"

.field public static final ATTR_DISP_MISSED:Ljava/lang/String; = "MISSED"

.field public static final ATTR_DISP_OUTGOING:Ljava/lang/String; = "OUTGOING"

.field public static final ATTR_DISP_REJECTED:Ljava/lang/String; = "REJECTED"

.field public static final ATTR_DISP_REJECTED_EXTERNALLY:Ljava/lang/String; = "REJECTED_EXTERNALLY"

.field public static final ATTR_DISP_VOICEMAIL:Ljava/lang/String; = "VOICEMAIL"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_ATTR_NAME_CALL_DISPOSITION:Ljava/lang/String; = "Call-Disposition"

.field private static final KEY_ATTR_NAME_CALL_DISPOSITION_EXT:Ljava/lang/String; = "Call-DispositionExt"

.field private static final KEY_ATTR_NAME_CALL_DURATION:Ljava/lang/String; = "Call-Duration"

.field private static final KEY_ATTR_NAME_CALL_TYPE:Ljava/lang/String; = "Call-Type"

.field private static final KEY_ATTR_NAME_CALL_TYPE_EXT:Ljava/lang/String; = "Call-TypeExt"

.field private static final KEY_ATTR_NAME_CNAP_NAME:Ljava/lang/String; = "cnap_name"

.field private static final KEY_ATTR_NAME_DATE:Ljava/lang/String; = "Date"

.field private static final KEY_ATTR_NAME_DEVICE_NAME:Ljava/lang/String; = "Device-Name"

.field private static final KEY_ATTR_NAME_DIRECTION:Ljava/lang/String; = "Direction"

.field private static final KEY_ATTR_NAME_DUO_DATA1:Ljava/lang/String; = "data1"

.field private static final KEY_ATTR_NAME_DUO_DATA2:Ljava/lang/String; = "data2"

.field private static final KEY_ATTR_NAME_DUO_DATA3:Ljava/lang/String; = "data3"

.field private static final KEY_ATTR_NAME_DUO_DATA4:Ljava/lang/String; = "data4"

.field private static final KEY_ATTR_NAME_EMERGENCY:Ljava/lang/String; = "Emergency"

.field private static final KEY_ATTR_NAME_FROM:Ljava/lang/String; = "From"

.field private static final KEY_ATTR_NAME_MSG_TYPE:Ljava/lang/String; = "Message-Context"

.field private static final KEY_ATTR_NAME_M_CONTENT:Ljava/lang/String; = "m_content"

.field private static final KEY_ATTR_NAME_PHONE_ACCOUNT_COMPONENT_NAME:Ljava/lang/String; = "PAC_name"

.field private static final KEY_ATTR_NAME_PRESENTATION:Ljava/lang/String; = "Presentation"

.field private static final KEY_ATTR_NAME_SIM_ID:Ljava/lang/String; = "Sim_id"

.field private static final KEY_ATTR_NAME_TO:Ljava/lang/String; = "To"

.field public static final LOG_TAG:Ljava/lang/String; = "CallLogAttr"

.field public static final VALUE_ATTR_CALLLOG:Ljava/lang/String; = "x-call-log"

.field public static final VALUE_ATTR_MSGLOG:Ljava/lang/String; = "x-msg-log"


# instance fields
.field private mCallDisposition:Ljava/lang/String;

.field private mCallDispositionExt:Ljava/lang/String;

.field private mCallDuration:Ljava/lang/String;

.field private mCallType:Ljava/lang/String;

.field private mCallTypeExt:Ljava/lang/String;

.field private mCnapName:Ljava/lang/String;

.field private mDate:Ljava/lang/String;

.field private mDeviceName:Ljava/lang/String;

.field private mDirection:Ljava/lang/String;

.field private mDuoData1:Ljava/lang/String;

.field private mDuoData2:Ljava/lang/String;

.field private mDuoData3:Ljava/lang/String;

.field private mDuoData4:Ljava/lang/String;

.field private mEmergency:Ljava/lang/String;

.field private mFrom:Ljava/lang/String;

.field private mMContent:Ljava/lang/String;

.field private mMsgContext:Ljava/lang/String;

.field private mPACname:Ljava/lang/String;

.field private mPresentation:Ljava/lang/String;

.field private mSimId:Ljava/lang/String;

.field private mTo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mFrom:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mTo:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mDate:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mDirection:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mDeviceName:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mCallType:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mCallTypeExt:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mCallDuration:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mCallDisposition:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mCallDispositionExt:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mEmergency:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mSimId:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mPresentation:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mCnapName:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mMContent:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mPACname:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mDuoData1:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mDuoData2:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mDuoData3:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mDuoData4:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    .line 25
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->access$000(Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mFrom:Ljava/lang/String;

    .line 26
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->access$100(Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mTo:Ljava/lang/String;

    .line 27
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->access$200(Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mDate:Ljava/lang/String;

    .line 28
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->access$300(Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mDirection:Ljava/lang/String;

    .line 29
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->access$400(Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mDeviceName:Ljava/lang/String;

    .line 30
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->access$500(Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mCallType:Ljava/lang/String;

    .line 31
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->access$600(Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mCallTypeExt:Ljava/lang/String;

    .line 32
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->access$700(Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mCallDuration:Ljava/lang/String;

    .line 33
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->access$800(Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mCallDisposition:Ljava/lang/String;

    .line 34
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->access$900(Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mCallDispositionExt:Ljava/lang/String;

    .line 35
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->access$1000(Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mEmergency:Ljava/lang/String;

    .line 36
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->access$1100(Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mSimId:Ljava/lang/String;

    .line 37
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->access$1200(Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mPresentation:Ljava/lang/String;

    .line 38
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->access$1300(Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mCnapName:Ljava/lang/String;

    .line 39
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->access$1400(Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mMContent:Ljava/lang/String;

    .line 40
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->access$1500(Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mPACname:Ljava/lang/String;

    .line 41
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->access$1600(Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mDuoData1:Ljava/lang/String;

    .line 42
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->access$1700(Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mDuoData2:Ljava/lang/String;

    .line 43
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->access$1800(Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mDuoData3:Ljava/lang/String;

    .line 44
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->access$1900(Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mDuoData4:Ljava/lang/String;

    .line 45
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->buildAttrMap()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    .line 48
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->buildAttrFromMap(Ljava/util/Map;)V

    return-void
.end method

.method private buildAttrFromMap(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "From"

    .line 1
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mFrom:Ljava/lang/String;

    :cond_0
    const-string v0, "To"

    .line 3
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mTo:Ljava/lang/String;

    :cond_1
    const-string v0, "Date"

    .line 5
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mDate:Ljava/lang/String;

    :cond_2
    const-string v0, "Direction"

    .line 7
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mDirection:Ljava/lang/String;

    :cond_3
    const-string v0, "Device-Name"

    .line 9
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 10
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mDeviceName:Ljava/lang/String;

    :cond_4
    const-string v0, "Message-Context"

    .line 11
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 12
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mMsgContext:Ljava/lang/String;

    :cond_5
    const-string v0, "Call-Type"

    .line 13
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 14
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mCallType:Ljava/lang/String;

    :cond_6
    const-string v0, "Call-TypeExt"

    .line 15
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 16
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mCallTypeExt:Ljava/lang/String;

    :cond_7
    const-string v0, "Call-Duration"

    .line 17
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 18
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mCallDuration:Ljava/lang/String;

    :cond_8
    const-string v0, "Call-Disposition"

    .line 19
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 20
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mCallDisposition:Ljava/lang/String;

    :cond_9
    const-string v0, "Call-DispositionExt"

    .line 21
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 22
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mCallDispositionExt:Ljava/lang/String;

    :cond_a
    const-string v0, "Emergency"

    .line 23
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 24
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mEmergency:Ljava/lang/String;

    :cond_b
    const-string v0, "Sim_id"

    .line 25
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 26
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mSimId:Ljava/lang/String;

    :cond_c
    const-string v0, "Presentation"

    .line 27
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 28
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mPresentation:Ljava/lang/String;

    :cond_d
    const-string v0, "cnap_name"

    .line 29
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 30
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mCnapName:Ljava/lang/String;

    :cond_e
    const-string v0, "m_content"

    .line 31
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 32
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mMContent:Ljava/lang/String;

    :cond_f
    const-string v0, "PAC_name"

    .line 33
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 34
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mPACname:Ljava/lang/String;

    :cond_10
    const-string v0, "data1"

    .line 35
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 36
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mDuoData1:Ljava/lang/String;

    :cond_11
    const-string v0, "data2"

    .line 37
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 38
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mDuoData2:Ljava/lang/String;

    :cond_12
    const-string v0, "data3"

    .line 39
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 40
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mDuoData3:Ljava/lang/String;

    :cond_13
    const-string v0, "data4"

    .line 41
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 42
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    aget-object p1, p1, v2

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mDuoData4:Ljava/lang/String;

    :cond_14
    return-void
.end method

.method private buildAttrMap()V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    .line 1
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mFrom:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 2
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mFrom:Ljava/lang/String;

    aput-object v2, v1, v3

    .line 3
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v4, "From"

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mTo:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-array v1, v0, [Ljava/lang/String;

    .line 5
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mTo:Ljava/lang/String;

    aput-object v2, v1, v3

    .line 6
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v4, "To"

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mDate:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-array v1, v0, [Ljava/lang/String;

    .line 8
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mDate:Ljava/lang/String;

    aput-object v2, v1, v3

    .line 9
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v4, "Date"

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mDirection:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    new-array v1, v0, [Ljava/lang/String;

    .line 11
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mDirection:Ljava/lang/String;

    aput-object v2, v1, v3

    .line 12
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v4, "Direction"

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mDeviceName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    new-array v1, v0, [Ljava/lang/String;

    .line 14
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mDeviceName:Ljava/lang/String;

    aput-object v2, v1, v3

    .line 15
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v4, "Device-Name"

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mCallType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    new-array v1, v0, [Ljava/lang/String;

    .line 17
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mCallType:Ljava/lang/String;

    aput-object v2, v1, v3

    .line 18
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v4, "Call-Type"

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [Ljava/lang/String;

    .line 19
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mCallType:Ljava/lang/String;

    const-string v4, "sms"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mCallType:Ljava/lang/String;

    const-string v4, "mms"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_0

    :cond_5
    const-string v2, "x-call-log"

    goto :goto_1

    :cond_6
    :goto_0
    const-string v2, "x-msg-log"

    :goto_1
    iput-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mMsgContext:Ljava/lang/String;

    aput-object v2, v1, v3

    .line 20
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v4, "Message-Context"

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :cond_7
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mCallTypeExt:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    new-array v1, v0, [Ljava/lang/String;

    .line 22
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mCallTypeExt:Ljava/lang/String;

    aput-object v2, v1, v3

    .line 23
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v4, "Call-TypeExt"

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :cond_8
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mCallDuration:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    new-array v1, v0, [Ljava/lang/String;

    .line 25
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mCallDuration:Ljava/lang/String;

    aput-object v2, v1, v3

    .line 26
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v4, "Call-Duration"

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    :cond_9
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mCallDisposition:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    new-array v1, v0, [Ljava/lang/String;

    .line 28
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mCallDisposition:Ljava/lang/String;

    aput-object v2, v1, v3

    .line 29
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v4, "Call-Disposition"

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    :cond_a
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mCallDispositionExt:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    new-array v1, v0, [Ljava/lang/String;

    .line 31
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mCallDispositionExt:Ljava/lang/String;

    aput-object v2, v1, v3

    .line 32
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v4, "Call-DispositionExt"

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    :cond_b
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mEmergency:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    new-array v1, v0, [Ljava/lang/String;

    .line 34
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mEmergency:Ljava/lang/String;

    aput-object v2, v1, v3

    .line 35
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v4, "Emergency"

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_c
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mSimId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    new-array v1, v0, [Ljava/lang/String;

    .line 37
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mSimId:Ljava/lang/String;

    aput-object v2, v1, v3

    .line 38
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v4, "Sim_id"

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :cond_d
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mPresentation:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    new-array v1, v0, [Ljava/lang/String;

    .line 40
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mPresentation:Ljava/lang/String;

    aput-object v2, v1, v3

    .line 41
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v4, "Presentation"

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :cond_e
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mCnapName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    new-array v1, v0, [Ljava/lang/String;

    .line 43
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mCnapName:Ljava/lang/String;

    aput-object v2, v1, v3

    .line 44
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v4, "cnap_name"

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    :cond_f
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mMContent:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    new-array v1, v0, [Ljava/lang/String;

    .line 46
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mMContent:Ljava/lang/String;

    aput-object v2, v1, v3

    .line 47
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v4, "m_content"

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_10
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mPACname:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    new-array v1, v0, [Ljava/lang/String;

    .line 49
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mPACname:Ljava/lang/String;

    aput-object v2, v1, v3

    .line 50
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v4, "PAC_name"

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_11
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mDuoData1:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    new-array v1, v0, [Ljava/lang/String;

    .line 52
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mDuoData1:Ljava/lang/String;

    aput-object v2, v1, v3

    .line 53
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v4, "data1"

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_12
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mDuoData2:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    new-array v1, v0, [Ljava/lang/String;

    .line 55
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mDuoData2:Ljava/lang/String;

    aput-object v2, v1, v3

    .line 56
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v4, "data2"

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_13
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mDuoData3:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    new-array v1, v0, [Ljava/lang/String;

    .line 58
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mDuoData3:Ljava/lang/String;

    aput-object v2, v1, v3

    .line 59
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v4, "data3"

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_14
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mDuoData4:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    new-array v0, v0, [Ljava/lang/String;

    .line 61
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mDuoData4:Ljava/lang/String;

    aput-object v1, v0, v3

    .line 62
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v2, "data4"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    return-void
.end method

.method public static getBuilder()Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;

    invoke-direct {v0}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCallDisposition()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mCallDisposition:Ljava/lang/String;

    return-object v0
.end method

.method public getCallDispositionExt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mCallDispositionExt:Ljava/lang/String;

    return-object v0
.end method

.method public getCallDuration()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mCallDuration:Ljava/lang/String;

    return-object v0
.end method

.method public getCallType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mCallType:Ljava/lang/String;

    return-object v0
.end method

.method public getCallTypeExt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mCallTypeExt:Ljava/lang/String;

    return-object v0
.end method

.method public getCnapName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mCnapName:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mDate:Ljava/lang/String;

    return-object v0
.end method

.method public getDecodedCallDisposition()Ljava/lang/String;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mCallDisposition:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v1, -0x1

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "VOICEMAIL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v6

    goto :goto_0

    :sswitch_1
    const-string v2, "AUTOREJECTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v4

    goto :goto_0

    :sswitch_2
    const-string v2, "INCOMING"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v9

    goto :goto_0

    :sswitch_3
    const-string v2, "OUTGOING"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v8

    goto :goto_0

    :sswitch_4
    const-string v2, "REJECTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v5

    goto :goto_0

    :sswitch_5
    const-string v2, "REJECTED_EXTERNALLY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x7

    goto :goto_0

    :sswitch_6
    const-string v2, "ANSWERED_EXTERNALLY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v3

    goto :goto_0

    :sswitch_7
    const-string v2, "MISSED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v7

    :cond_1
    :goto_0
    packed-switch v1, :pswitch_data_0

    move v3, v9

    goto :goto_1

    :pswitch_0
    const/16 v3, 0x5aa

    goto :goto_1

    :pswitch_1
    const/16 v3, 0x578

    goto :goto_1

    :pswitch_2
    move v3, v4

    goto :goto_1

    :pswitch_3
    move v3, v5

    goto :goto_1

    :pswitch_4
    move v3, v6

    goto :goto_1

    :pswitch_5
    move v3, v7

    goto :goto_1

    :pswitch_6
    move v3, v8

    .line 3
    :goto_1
    :pswitch_7
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x786f2965 -> :sswitch_7
        -0x357e14c6 -> :sswitch_6
        -0x18843307 -> :sswitch_5
        0xa61047e -> :sswitch_4
        0x3253236c -> :sswitch_3
        0x342de826 -> :sswitch_2
        0x57a2bb2d -> :sswitch_1
        0x69660dc9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDecodedCallType()Ljava/lang/String;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mCallType:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v1, -0x1

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "volte"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v3

    goto :goto_0

    :sswitch_1
    const-string v2, "voice"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v7

    goto :goto_0

    :sswitch_2
    const-string v2, "video"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v6

    goto :goto_0

    :sswitch_3
    const-string v2, "sms"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v5

    goto :goto_0

    :sswitch_4
    const-string v2, "mms"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v4

    :cond_1
    :goto_0
    if-eqz v1, :cond_6

    if-eq v1, v6, :cond_5

    if-eq v1, v5, :cond_4

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_2

    goto :goto_1

    :cond_2
    const/16 v7, 0x3e8

    goto :goto_1

    :cond_3
    const/16 v7, 0xc8

    goto :goto_1

    :cond_4
    const/16 v7, 0x12c

    goto :goto_1

    :cond_5
    const/16 v7, 0x1f4

    goto :goto_1

    :cond_6
    const/16 v7, 0x64

    .line 3
    :goto_1
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1a6d3 -> :sswitch_4
        0x1bd59 -> :sswitch_3
        0x6b0147b -> :sswitch_2
        0x6b2e132 -> :sswitch_1
        0x6b2ee84 -> :sswitch_0
    .end sparse-switch
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getDirection()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mDirection:Ljava/lang/String;

    return-object v0
.end method

.method public getDuoData1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mDuoData1:Ljava/lang/String;

    return-object v0
.end method

.method public getDuoData2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mDuoData2:Ljava/lang/String;

    return-object v0
.end method

.method public getDuoData3()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mDuoData3:Ljava/lang/String;

    return-object v0
.end method

.method public getDuoData4()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mDuoData4:Ljava/lang/String;

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mFrom:Ljava/lang/String;

    return-object v0
.end method

.method public getMContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mMContent:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgContext()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mMsgContext:Ljava/lang/String;

    return-object v0
.end method

.method public getPACname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mPACname:Ljava/lang/String;

    return-object v0
.end method

.method public getPresentation()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mPresentation:Ljava/lang/String;

    return-object v0
.end method

.method public getSimid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mSimId:Ljava/lang/String;

    return-object v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mTo:Ljava/lang/String;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mFrom:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mTo:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mDate:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mDirection:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mDeviceName:Ljava/lang/String;

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mMsgContext:Ljava/lang/String;

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mCallType:Ljava/lang/String;

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mCallTypeExt:Ljava/lang/String;

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mCallDuration:Ljava/lang/String;

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mCallDisposition:Ljava/lang/String;

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mCallDispositionExt:Ljava/lang/String;

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mEmergency:Ljava/lang/String;

    .line 12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mSimId:Ljava/lang/String;

    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mPresentation:Ljava/lang/String;

    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mCnapName:Ljava/lang/String;

    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mMContent:Ljava/lang/String;

    .line 16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mPACname:Ljava/lang/String;

    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mDuoData1:Ljava/lang/String;

    .line 18
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mDuoData2:Ljava/lang/String;

    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mDuoData3:Ljava/lang/String;

    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mDuoData4:Ljava/lang/String;

    .line 21
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeMsgContext()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v1, "Message-Context"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CallLogAttr [mFrom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mFrom:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mTo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mTo:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mDirection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDeviceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mMsgContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mMsgContext:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCallType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mCallType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCallTypeExt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mCallTypeExt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCallDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mCallDuration:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCallDisposition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mCallDisposition:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCallDispositionExt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mCallDispositionExt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mEmergency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mEmergency:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSimId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mSimId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPresentation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mPresentation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCnapName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mCnapName:Ljava/lang/String;

    .line 2
    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mMContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mMContent:Ljava/lang/String;

    .line 3
    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPACname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mPACname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDuoData1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mDuoData1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDuoData2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mDuoData2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDuoData3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mDuoData3:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDuoData4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->mDuoData4:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    return-void
.end method
