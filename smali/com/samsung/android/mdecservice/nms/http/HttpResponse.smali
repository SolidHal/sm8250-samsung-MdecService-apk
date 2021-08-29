.class public Lcom/samsung/android/mdecservice/nms/http/HttpResponse;
.super Ljava/lang/Object;
.source "HttpResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/mdecservice/nms/http/HttpResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mAdditionalReason:Ljava/lang/String;

.field protected mCode:I

.field protected mOkhttpHeaders:Lf/r;

.field protected mReason:Ljava/lang/String;

.field protected mVolleyHeaders:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse$1;

    invoke-direct {v0}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse$1;-><init>()V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;->mCode:I

    return-void
.end method

.method public constructor <init>(ILf/r;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;->mCode:I

    .line 14
    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;->mOkhttpHeaders:Lf/r;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p1, p0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;->mCode:I

    .line 7
    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;->mReason:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;->mCode:I

    .line 10
    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;->mReason:Ljava/lang/String;

    .line 11
    iput-object p3, p0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;->mAdditionalReason:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILorg/json/JSONObject;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;->mCode:I

    .line 17
    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;->mVolleyHeaders:Lorg/json/JSONObject;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;->mCode:I

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;->mReason:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/mdecservice/nms/http/HttpResponse$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    .line 3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;->mReason:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;->mReason:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget v0, p0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;->mCode:I

    iget v3, p1, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;->mCode:I

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;->mReason:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;->mReason:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    move v1, v2

    :cond_2
    return v1

    .line 5
    :cond_3
    :goto_0
    iget v0, p0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;->mCode:I

    iget p1, p1, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;->mCode:I

    if-ne v0, p1, :cond_4

    move v1, v2

    :cond_4
    return v1
.end method

.method public getAdditionalReason()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;->mAdditionalReason:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;->mCode:I

    return v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;->mReason:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;->mCode:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 2
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;->mReason:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;->mAdditionalReason:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "]"

    const-string v2, "["

    const-string v3, " - "

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;->mCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;->mReason:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;->mCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;->mReason:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;->mAdditionalReason:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;->mCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;->mReason:Ljava/lang/String;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 4
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;->mReason:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
