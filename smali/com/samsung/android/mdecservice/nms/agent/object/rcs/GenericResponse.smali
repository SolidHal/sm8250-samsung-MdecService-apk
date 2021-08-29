.class public Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;
.super Ljava/lang/Object;
.source "GenericResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;
    }
.end annotation


# instance fields
.field private isRelayResponse:Z

.field private mFailureResponseList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private mSuccessResponseList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private final mTid:Ljava/lang/String;

.field private final responseType:Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;->mTid:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;->responseType:Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;

    if-nez p3, :cond_0

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;->mSuccessResponseList:Ljava/util/List;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;->mFailureResponseList:Ljava/util/List;

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;->mSuccessResponseList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;->mFailureResponseList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method

.method public getFailureResponseList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;->mFailureResponseList:Ljava/util/List;

    return-object v0
.end method

.method public getResponseType()Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;->responseType:Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;

    return-object v0
.end method

.method public getSuccessResponseList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;->mSuccessResponseList:Ljava/util/List;

    return-object v0
.end method

.method public getTid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;->mTid:Ljava/lang/String;

    return-object v0
.end method

.method public isRelayResponse()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;->isRelayResponse:Z

    return v0
.end method

.method public setFailureResponseList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;->mFailureResponseList:Ljava/util/List;

    return-void
.end method

.method public setRelayResponse()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;->mSuccessResponseList:Ljava/util/List;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "is-relay"

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;->mSuccessResponseList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;->isRelayResponse:Z

    .line 7
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;->mFailureResponseList:Ljava/util/List;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;->mFailureResponseList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 11
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 12
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_2
    iput-boolean v1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;->isRelayResponse:Z

    .line 13
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setRelayResponse(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;->isRelayResponse:Z

    return-void
.end method

.method public setSuccessResponseList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;->mSuccessResponseList:Ljava/util/List;

    return-void
.end method
