.class public final Lcom/samsung/android/mdecservice/nms/event/SyncEventBase$StatusFlag;
.super Ljava/lang/Object;
.source "SyncEventBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StatusFlag"
.end annotation


# static fields
.field public static final FLAG_ANSWERED:Ljava/lang/String; = "\\Answered"

.field public static final FLAG_DELETED:Ljava/lang/String; = "\\Deleted"

.field public static final FLAG_DELIVERED:Ljava/lang/String; = "\\Delivered"

.field public static final FLAG_EXPIRED:Ljava/lang/String; = "\\Expired"

.field public static final FLAG_FAILED:Ljava/lang/String; = "\\Failed"

.field public static final FLAG_PENDING:Ljava/lang/String; = "\\Pending"

.field public static final FLAG_RECENT:Ljava/lang/String; = "\\Recent"

.field public static final FLAG_SEEN:Ljava/lang/String; = "\\Seen"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
