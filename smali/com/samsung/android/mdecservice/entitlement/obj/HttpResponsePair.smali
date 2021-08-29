.class public Lcom/samsung/android/mdecservice/entitlement/obj/HttpResponsePair;
.super Ljava/lang/Object;
.source "HttpResponsePair.java"


# instance fields
.field private mResponse:Ljava/lang/StringBuilder;

.field private mResponseCode:I


# direct methods
.method public constructor <init>(ILjava/lang/StringBuilder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/samsung/android/mdecservice/entitlement/obj/HttpResponsePair;->mResponseCode:I

    .line 3
    iput-object p2, p0, Lcom/samsung/android/mdecservice/entitlement/obj/HttpResponsePair;->mResponse:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public getResponse()Ljava/lang/StringBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/obj/HttpResponsePair;->mResponse:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/mdecservice/entitlement/obj/HttpResponsePair;->mResponseCode:I

    return v0
.end method
