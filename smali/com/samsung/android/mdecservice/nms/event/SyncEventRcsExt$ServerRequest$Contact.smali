.class public final Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$ServerRequest$Contact;
.super Ljava/lang/Object;
.source "SyncEventRcsExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$ServerRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Contact"
.end annotation


# static fields
.field public static final DELETE_REQUEST:Ljava/lang/String; = "DeleteContactRequest"

.field public static final POST_REQUEST:Ljava/lang/String; = "PostContactRequest"

.field public static final RELAY_REQUEST:Ljava/lang/String; = "RelayRequest"

.field public static final RELAY_RESPONSE:Ljava/lang/String; = "RelayResponse"

.field public static final SEARCH_REQUEST:Ljava/lang/String; = "SearchContactRequest"

.field public static final UPDATE_REQUEST:Ljava/lang/String; = "UpdateContactRequest"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
