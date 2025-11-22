.class public final Lzf/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk9/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lk9/a;"
    }
.end annotation


# instance fields
.field public final a:Lvd/d;

.field public final b:Lk9/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk9/a<",
            "Ltr/gov/turkiye/edevlet/kapisi/BaseApplication;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lvd/d;Lv8/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzf/a;->a:Lvd/d;

    iput-object p2, p0, Lzf/a;->b:Lk9/a;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lzf/a;->b:Lk9/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lk9/a;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/BaseApplication;

    .line 8
    .line 9
    iget-object v1, p0, Lzf/a;->a:Lvd/d;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const-string v1, "application"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "application.applicationContext"

    .line 24
    .line 25
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-object v0
.end method
