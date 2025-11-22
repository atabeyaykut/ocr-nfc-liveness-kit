.class public final Lq/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public a:Z

.field public final synthetic b:Lq/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq/g<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic c:Landroid/view/ViewTreeObserver;

.field public final synthetic d:Lnc/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnc/i<",
            "Lq/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lq/g;Landroid/view/ViewTreeObserver;Lnc/j;)V
    .locals 0

    iput-object p1, p0, Lq/i;->b:Lq/g;

    iput-object p2, p0, Lq/i;->c:Landroid/view/ViewTreeObserver;

    iput-object p3, p0, Lq/i;->d:Lnc/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lq/i;->b:Lq/g;

    .line 2
    .line 3
    invoke-static {v0}, Lq/g$a;->a(Lq/g;)Lq/e;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    iget-object v3, p0, Lq/i;->c:Landroid/view/ViewTreeObserver;

    .line 11
    .line 12
    invoke-virtual {v3}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-interface {v0}, Lq/g;->c()Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    iget-boolean v0, p0, Lq/i;->a:Z

    .line 34
    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    iput-boolean v2, p0, Lq/i;->a:Z

    .line 38
    .line 39
    iget-object v0, p0, Lq/i;->d:Lnc/i;

    .line 40
    .line 41
    invoke-interface {v0, v1}, Lp9/d;->resumeWith(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    return v2
.end method
