.class public final Lq/h;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Ljava/lang/Throwable;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lq/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq/g<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic b:Landroid/view/ViewTreeObserver;

.field public final synthetic c:Lq/i;


# direct methods
.method public constructor <init>(Lq/g;Landroid/view/ViewTreeObserver;Lq/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq/g<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/ViewTreeObserver;",
            "Lq/i;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lq/h;->a:Lq/g;

    iput-object p2, p0, Lq/h;->b:Landroid/view/ViewTreeObserver;

    iput-object p3, p0, Lq/h;->c:Lq/i;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    .line 3
    iget-object p1, p0, Lq/h;->b:Landroid/view/ViewTreeObserver;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lq/h;->c:Lq/i;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p1, p0, Lq/h;->a:Lq/g;

    .line 15
    .line 16
    invoke-interface {p1}, Lq/g;->c()Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 25
    .line 26
    .line 27
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 28
    .line 29
    return-object p1
.end method
