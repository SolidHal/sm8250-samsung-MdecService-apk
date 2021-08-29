.class Lb/c/f/b;
.super Lb/c/f/d;
.source "CardViewApi17Impl.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/c/f/d;-><init>()V

    return-void
.end method


# virtual methods
.method public g()V
    .locals 1

    .line 1
    new-instance v0, Lb/c/f/b$a;

    invoke-direct {v0, p0}, Lb/c/f/b$a;-><init>(Lb/c/f/b;)V

    sput-object v0, Lb/c/f/h;->r:Lb/c/f/h$a;

    return-void
.end method
