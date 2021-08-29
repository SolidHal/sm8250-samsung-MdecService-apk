.class public final Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$ServerRequest$Cif;
.super Ljava/lang/Object;
.source "SyncEventCif.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$ServerRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Cif"
.end annotation


# static fields
.field public static final BULK_DELETE_REQUEST:Ljava/lang/String; = "BulkDeleteCifRequest"

.field public static final BULK_POST_REQUEST:Ljava/lang/String; = "BulkPostCifRequest"

.field public static final DELETE_REQUEST:Ljava/lang/String; = "DeleteCifRequest"

.field public static final POST_REQUEST:Ljava/lang/String; = "PostCifRequest"

.field public static final SEARCH_REQUEST:Ljava/lang/String; = "SearchCifRequest"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
