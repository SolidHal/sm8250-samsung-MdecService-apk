.class public Lcom/samsung/android/cmcsettings/utils/CallMessageActiveServices;
.super Ljava/lang/Object;
.source "CallMessageActiveServices.java"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private activeServiceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private activeServiceValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/cmcsettings/utils/CallMessageActiveServices;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/utils/CallMessageActiveServices;->LOG_TAG:Ljava/lang/String;

    const-string v0, "1,1"

    .line 3
    iput-object v0, p0, Lcom/samsung/android/cmcsettings/utils/CallMessageActiveServices;->activeServiceValue:Ljava/lang/String;

    .line 4
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/utils/CallMessageActiveServices;->createActiveServicesMap()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/cmcsettings/utils/CallMessageActiveServices;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/utils/CallMessageActiveServices;->LOG_TAG:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/utils/CallMessageActiveServices;->activeServiceValue:Ljava/lang/String;

    .line 8
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/utils/CallMessageActiveServices;->createActiveServicesMap()V

    return-void
.end method

.method private createActiveServicesMap()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/utils/CallMessageActiveServices;->activeServiceMap:Ljava/util/HashMap;

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/utils/CallMessageActiveServices;->validateActiveServiceValueFormat()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/utils/CallMessageActiveServices;->activeServiceValue:Ljava/lang/String;

    const-string v1, ","

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4
    array-length v1, v0

    new-array v2, v1, [I

    const/4 v3, 0x0

    move v4, v3

    .line 5
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_0

    .line 6
    aget-object v5, v0, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v3, v1, :cond_3

    if-nez v3, :cond_1

    .line 7
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/utils/CallMessageActiveServices;->activeServiceMap:Ljava/util/HashMap;

    aget v4, v2, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "callforking"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 v0, 0x1

    if-ne v3, v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/utils/CallMessageActiveServices;->activeServiceMap:Ljava/util/HashMap;

    aget v4, v2, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "message"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/utils/CallMessageActiveServices;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseActiveServicesToMap : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/cmcsettings/utils/CallMessageActiveServices;->activeServiceMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private validateActiveServiceValueFormat()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/utils/CallMessageActiveServices;->activeServiceValue:Ljava/lang/String;

    const-string v1, "1,1"

    if-eqz v0, :cond_4

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/utils/CallMessageActiveServices;->activeServiceValue:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3
    array-length v2, v0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    return-object v1

    .line 4
    :cond_1
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    const-string v5, "0"

    .line 5
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    return-object v1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/utils/CallMessageActiveServices;->activeServiceValue:Ljava/lang/String;

    return-object v0

    :cond_4
    :goto_1
    return-object v1
.end method


# virtual methods
.method public getActiveServiceMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/utils/CallMessageActiveServices;->activeServiceMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getActiveServiceValueInString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/utils/CallMessageActiveServices;->activeServiceValue:Ljava/lang/String;

    return-object v0
.end method

.method public setActiveServices(Ljava/lang/String;I)V
    .locals 6

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    if-eq p2, v0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 3
    iget-object v3, p0, Lcom/samsung/android/cmcsettings/utils/CallMessageActiveServices;->activeServiceMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 7
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/cmcsettings/utils/CallMessageActiveServices;->activeServiceMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 8
    iget-object v5, p0, Lcom/samsung/android/cmcsettings/utils/CallMessageActiveServices;->activeServiceMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const-string v4, ","

    .line 9
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const/4 p2, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v1, p2, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    iget-object p2, p0, Lcom/samsung/android/cmcsettings/utils/CallMessageActiveServices;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseActiveServicesToString : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/utils/CallMessageActiveServices;->activeServiceValue:Ljava/lang/String;

    .line 13
    iput-object v2, p0, Lcom/samsung/android/cmcsettings/utils/CallMessageActiveServices;->activeServiceMap:Ljava/util/HashMap;

    return-void
.end method
