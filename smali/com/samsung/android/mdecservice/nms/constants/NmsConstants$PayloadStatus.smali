.class public Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$PayloadStatus;
.super Ljava/lang/Object;
.source "NmsConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/constants/NmsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PayloadStatus"
.end annotation


# static fields
.field public static final DOWNLOADING_PAYLOAD:Ljava/lang/String; = "downloading_payload"

.field public static final DOWNLOAD_FINISHED:Ljava/lang/String; = "download_finished"

.field public static final DOWNLOAD_REQUESTED:Ljava/lang/String; = "download_requested"

.field public static final FINISHED:Ljava/lang/String; = "finished"

.field public static final PENDING:Ljava/lang/String; = "pending"

.field public static final UNAVAILABLE:Ljava/lang/String; = "unavailable"

.field public static final UPLOAD_FINISHED:Ljava/lang/String; = "upload_finished"

.field public static final UPLOAD_PENDING:Ljava/lang/String; = "upload_pending"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
