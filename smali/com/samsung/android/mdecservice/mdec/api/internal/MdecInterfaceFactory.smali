.class public Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceFactory;
.super Ljava/lang/Object;
.source "MdecInterfaceFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMdecInterface()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceImpl;->getInstance()Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceImpl;

    move-result-object v0

    return-object v0
.end method
