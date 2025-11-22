.class public final Lq/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;",
        "Lq/g<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final b:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq/d;->a:Landroid/view/View;

    iput-boolean p2, p0, Lq/d;->b:Z

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lq/d;->b:Z

    return v0
.end method

.method public final b(Le/i;)Ljava/lang/Object;
    .locals 3

    invoke-static {p0}, Lq/g$a;->a(Lq/g;)Lq/e;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lnc/j;

    invoke-static {p1}, Lc5/w;->x(Lp9/d;)Lp9/d;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lnc/j;-><init>(ILp9/d;)V

    invoke-virtual {v0}, Lnc/j;->n()V

    iget-object p1, p0, Lq/d;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v1, Lq/i;

    invoke-direct {v1, p0, p1, v0}, Lq/i;-><init>(Lq/g;Landroid/view/ViewTreeObserver;Lnc/j;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    new-instance v2, Lq/h;

    invoke-direct {v2, p0, p1, v1}, Lq/h;-><init>(Lq/g;Landroid/view/ViewTreeObserver;Lq/i;)V

    invoke-virtual {v0, v2}, Lnc/j;->D(Lx9/l;)V

    invoke-virtual {v0}, Lnc/j;->m()Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final c()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lq/d;->a:Landroid/view/View;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lq/d;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    check-cast p1, Lq/d;

    .line 10
    .line 11
    iget-object v1, p1, Lq/d;->a:Landroid/view/View;

    .line 12
    .line 13
    iget-object v2, p0, Lq/d;->a:Landroid/view/View;

    .line 14
    .line 15
    invoke-static {v2, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    iget-boolean p1, p1, Lq/d;->b:Z

    .line 22
    .line 23
    iget-boolean v1, p0, Lq/d;->b:Z

    .line 24
    .line 25
    if-ne v1, p1, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v0, 0x0

    .line 29
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lq/d;->a:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lq/d;->b:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v1, 0x4d5

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method
