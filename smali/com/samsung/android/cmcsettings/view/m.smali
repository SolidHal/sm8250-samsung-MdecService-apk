.class public final synthetic Lcom/samsung/android/cmcsettings/view/m;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;


# instance fields
.field public final synthetic a:Lcom/samsung/android/cmcsettings/view/CMCMainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/cmcsettings/view/CMCMainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/m;->a:Lcom/samsung/android/cmcsettings/view/CMCMainActivity;

    return-void
.end method


# virtual methods
.method public final onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/m;->a:Lcom/samsung/android/cmcsettings/view/CMCMainActivity;

    invoke-virtual {v0, p1}, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->r(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
