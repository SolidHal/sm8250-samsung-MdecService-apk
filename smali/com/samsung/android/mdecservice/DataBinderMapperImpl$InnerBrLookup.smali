.class Lcom/samsung/android/mdecservice/DataBinderMapperImpl$InnerBrLookup;
.super Ljava/lang/Object;
.source "DataBinderMapperImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/DataBinderMapperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerBrLookup"
.end annotation


# static fields
.field static final sKeys:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/samsung/android/mdecservice/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const-string v2, "_all"

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3
    sget-object v0, Lcom/samsung/android/mdecservice/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const-string v2, "bottomWelcomeLayout"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    sget-object v0, Lcom/samsung/android/mdecservice/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-string v2, "fragment"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5
    sget-object v0, Lcom/samsung/android/mdecservice/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const/4 v1, 0x3

    const-string v2, "stateManager"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6
    sget-object v0, Lcom/samsung/android/mdecservice/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const/4 v1, 0x4

    const-string v2, "suggestFragment"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7
    sget-object v0, Lcom/samsung/android/mdecservice/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const/4 v1, 0x5

    const-string v2, "suggestViewModel"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8
    sget-object v0, Lcom/samsung/android/mdecservice/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const/4 v1, 0x6

    const-string v2, "topWelcomeLayout"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9
    sget-object v0, Lcom/samsung/android/mdecservice/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const/4 v1, 0x7

    const-string v2, "viewModel"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 10
    sget-object v0, Lcom/samsung/android/mdecservice/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const/16 v1, 0x8

    const-string v2, "welcome"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
