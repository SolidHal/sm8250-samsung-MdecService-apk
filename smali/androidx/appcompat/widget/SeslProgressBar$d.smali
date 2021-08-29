.class Landroidx/appcompat/widget/SeslProgressBar$d;
.super Ljava/lang/Object;
.source "SeslProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/SeslProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# static fields
.field private static final e:Lb/f/j/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/f/j/g<",
            "Landroidx/appcompat/widget/SeslProgressBar$d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field public d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lb/f/j/g;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Lb/f/j/g;-><init>(I)V

    sput-object v0, Landroidx/appcompat/widget/SeslProgressBar$d;->e:Lb/f/j/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(IIZZ)Landroidx/appcompat/widget/SeslProgressBar$d;
    .locals 1

    .line 1
    sget-object v0, Landroidx/appcompat/widget/SeslProgressBar$d;->e:Lb/f/j/g;

    invoke-virtual {v0}, Lb/f/j/g;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SeslProgressBar$d;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/appcompat/widget/SeslProgressBar$d;

    invoke-direct {v0}, Landroidx/appcompat/widget/SeslProgressBar$d;-><init>()V

    .line 3
    :cond_0
    iput p0, v0, Landroidx/appcompat/widget/SeslProgressBar$d;->a:I

    .line 4
    iput p1, v0, Landroidx/appcompat/widget/SeslProgressBar$d;->b:I

    .line 5
    iput-boolean p2, v0, Landroidx/appcompat/widget/SeslProgressBar$d;->c:Z

    .line 6
    iput-boolean p3, v0, Landroidx/appcompat/widget/SeslProgressBar$d;->d:Z

    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    sget-object v0, Landroidx/appcompat/widget/SeslProgressBar$d;->e:Lb/f/j/g;

    invoke-virtual {v0, p0}, Lb/f/j/g;->a(Ljava/lang/Object;)Z

    return-void
.end method
