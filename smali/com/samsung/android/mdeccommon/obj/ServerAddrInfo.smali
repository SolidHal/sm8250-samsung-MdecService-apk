.class public Lcom/samsung/android/mdeccommon/obj/ServerAddrInfo;
.super Ljava/lang/Object;
.source "ServerAddrInfo.java"


# instance fields
.field private mEsAddr:Ljava/lang/String;

.field private mLocalAcsAddr:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/samsung/android/mdeccommon/obj/ServerAddrInfo;->mLocalAcsAddr:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/samsung/android/mdeccommon/obj/ServerAddrInfo;->mEsAddr:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lcom/samsung/android/mdeccommon/obj/ServerAddrInfo;->mLocalAcsAddr:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/samsung/android/mdeccommon/obj/ServerAddrInfo;->mEsAddr:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Lcom/samsung/android/mdeccommon/obj/ServerAddrInfo;->mLocalAcsAddr:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lcom/samsung/android/mdeccommon/obj/ServerAddrInfo;->mEsAddr:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEsAddr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/obj/ServerAddrInfo;->mEsAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalAcsAddr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/obj/ServerAddrInfo;->mLocalAcsAddr:Ljava/lang/String;

    return-object v0
.end method

.method public setEsAddr(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdeccommon/obj/ServerAddrInfo;->mEsAddr:Ljava/lang/String;

    return-void
.end method

.method public setLocalAcsAddr(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdeccommon/obj/ServerAddrInfo;->mLocalAcsAddr:Ljava/lang/String;

    return-void
.end method
