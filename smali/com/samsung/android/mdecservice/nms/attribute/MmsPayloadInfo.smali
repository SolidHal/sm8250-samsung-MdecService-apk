.class public Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;
.super Ljava/lang/Object;
.source "MmsPayloadInfo.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MmsPayloadInfo"


# instance fields
.field private mBinaryContent:[B

.field private mContentDisposition:Ljava/lang/String;

.field private mContentType:Ljava/lang/String;

.field private mFileName:Ljava/lang/String;

.field private mHRef:Ljava/lang/String;

.field private mPayloadSize:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBinaryContent()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;->mBinaryContent:[B

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getPayloadSize()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;->mPayloadSize:Ljava/lang/String;

    return-object v0
.end method

.method public setBinaryContent([B)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;->mBinaryContent:[B

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBinaryContent Size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MmsPayloadInfo"

    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setContentDisposition(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;->mContentDisposition:Ljava/lang/String;

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;->mContentType:Ljava/lang/String;

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;->mFileName:Ljava/lang/String;

    return-void
.end method

.method public setHRef(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;->mHRef:Ljava/lang/String;

    return-void
.end method

.method public setPayloadSize(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;->mPayloadSize:Ljava/lang/String;

    return-void
.end method
