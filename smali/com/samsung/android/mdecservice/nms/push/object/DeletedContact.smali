.class public Lcom/samsung/android/mdecservice/nms/push/object/DeletedContact;
.super Ljava/lang/Object;
.source "DeletedContact.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "DeletedContact"


# instance fields
.field private mDeletedNumberList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/DeletedContact;->mDeletedNumberList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getDeletedNumberList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/DeletedContact;->mDeletedNumberList:Ljava/util/List;

    return-object v0
.end method

.method public parseJSON(Lorg/json/JSONArray;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/push/object/DeletedContact;->mDeletedNumberList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-void
.end method
