.class public Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;
.super Ljava/lang/Object;
.source "CallLogAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


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

.field private mPACname:Ljava/lang/String;

.field private mPresentation:Ljava/lang/String;

.field private mSim_id:Ljava/lang/String;

.field private mTo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mFrom:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mTo:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mDate:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mDirection:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mDeviceName:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mCallType:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mCallTypeExt:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mCallDuration:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mCallDisposition:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mCallDispositionExt:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mEmergency:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mSim_id:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mPresentation:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mCnapName:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mMContent:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mPACname:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mDuoData1:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mDuoData2:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mDuoData3:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mDuoData4:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mFrom:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mTo:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mEmergency:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mSim_id:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mPresentation:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mCnapName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mMContent:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mPACname:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mDuoData1:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mDuoData2:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mDuoData3:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mDuoData4:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mDate:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mDirection:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mDeviceName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mCallType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mCallTypeExt:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mCallDuration:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mCallDisposition:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mCallDispositionExt:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;

    invoke-direct {v0, p0}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;-><init>(Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;)V

    return-object v0
.end method

.method public removeDirection()Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mDirection:Ljava/lang/String;

    return-object p0
.end method

.method public setCallDisposition(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mCallDispositionExt:Ljava/lang/String;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x44c

    if-eq v0, v1, :cond_6

    const/16 v1, 0x47e

    if-eq v0, v1, :cond_6

    const/16 v1, 0x4b0

    const-string v2, "IN"

    if-eq v0, v1, :cond_5

    const/16 v1, 0x4e2

    if-eq v0, v1, :cond_4

    const/16 v1, 0x514

    if-eq v0, v1, :cond_3

    const/16 v1, 0x578

    if-eq v0, v1, :cond_2

    const/16 v1, 0x5aa

    if-eq v0, v1, :cond_1

    const/16 v1, 0x5dc

    if-eq v0, v1, :cond_6

    const/16 v1, 0x640

    if-eq v0, v1, :cond_6

    packed-switch v0, :pswitch_data_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no value for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CallLogAttr"

    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :pswitch_0
    iput-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mDirection:Ljava/lang/String;

    const-string p1, "AUTOREJECTED"

    .line 5
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mCallDisposition:Ljava/lang/String;

    goto :goto_0

    .line 6
    :pswitch_1
    iput-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mDirection:Ljava/lang/String;

    const-string p1, "VOICEMAIL"

    .line 7
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mCallDisposition:Ljava/lang/String;

    goto :goto_0

    .line 8
    :cond_1
    iput-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mDirection:Ljava/lang/String;

    const-string p1, "REJECTED_EXTERNALLY"

    .line 9
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mCallDisposition:Ljava/lang/String;

    goto :goto_0

    .line 10
    :cond_2
    :pswitch_2
    iput-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mDirection:Ljava/lang/String;

    const-string p1, "ANSWERED_EXTERNALLY"

    .line 11
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mCallDisposition:Ljava/lang/String;

    goto :goto_0

    .line 12
    :cond_3
    :pswitch_3
    iput-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mDirection:Ljava/lang/String;

    const-string p1, "REJECTED"

    .line 13
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mCallDisposition:Ljava/lang/String;

    goto :goto_0

    .line 14
    :cond_4
    :pswitch_4
    iput-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mDirection:Ljava/lang/String;

    const-string p1, "MISSED"

    .line 15
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mCallDisposition:Ljava/lang/String;

    goto :goto_0

    .line 16
    :cond_5
    :pswitch_5
    iput-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mDirection:Ljava/lang/String;

    const-string p1, "INCOMING"

    .line 17
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mCallDisposition:Ljava/lang/String;

    goto :goto_0

    :cond_6
    :pswitch_6
    const-string p1, "OUT"

    .line 18
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mDirection:Ljava/lang/String;

    const-string p1, "OUTGOING"

    .line 19
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mCallDisposition:Ljava/lang/String;

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setCallDuration(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mCallDuration:Ljava/lang/String;

    return-object p0
.end method

.method public setCallType(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;
    .locals 0

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mCallTypeExt:Ljava/lang/String;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p1, "volte"

    .line 3
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mCallType:Ljava/lang/String;

    goto :goto_0

    :sswitch_1
    const-string p1, "video"

    .line 4
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mCallType:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    const-string p1, "sms"

    .line 5
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mCallType:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    const-string p1, "mms"

    .line 6
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mCallType:Ljava/lang/String;

    goto :goto_0

    :sswitch_4
    const-string p1, "voice"

    .line 7
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mCallType:Ljava/lang/String;

    :goto_0
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_4
        0x6e -> :sswitch_4
        0x96 -> :sswitch_4
        0xc8 -> :sswitch_3
        0x12c -> :sswitch_2
        0x1f4 -> :sswitch_1
        0x320 -> :sswitch_4
        0x3e8 -> :sswitch_0
        0x41a -> :sswitch_1
        0x47e -> :sswitch_4
        0x546 -> :sswitch_4
        0x5aa -> :sswitch_1
    .end sparse-switch
.end method

.method public setCnapName(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mCnapName:Ljava/lang/String;

    return-object p0
.end method

.method public setDate(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mDate:Ljava/lang/String;

    return-object p0
.end method

.method public setDeviceName(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mDeviceName:Ljava/lang/String;

    return-object p0
.end method

.method public setDuoData1(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mDuoData1:Ljava/lang/String;

    return-object p0
.end method

.method public setDuoData2(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mDuoData2:Ljava/lang/String;

    return-object p0
.end method

.method public setDuoData3(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mDuoData3:Ljava/lang/String;

    return-object p0
.end method

.method public setDuoData4(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mDuoData4:Ljava/lang/String;

    return-object p0
.end method

.method public setEmergency(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mEmergency:Ljava/lang/String;

    return-object p0
.end method

.method public setFrom(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mFrom:Ljava/lang/String;

    return-object p0
.end method

.method public setMContent(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mMContent:Ljava/lang/String;

    return-object p0
.end method

.method public setPACname(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mPACname:Ljava/lang/String;

    return-object p0
.end method

.method public setPresentation(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mPresentation:Ljava/lang/String;

    return-object p0
.end method

.method public setSimid(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mSim_id:Ljava/lang/String;

    return-object p0
.end method

.method public setTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->mTo:Ljava/lang/String;

    return-object p0
.end method
