.class public final Lc5/x6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/Context;",
        ":",
        "Lc5/w6;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lr3/r;->i(Ljava/lang/Object;)V

    iput-object p1, p0, Lc5/x6;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lc5/x6;->c()Lc5/e3;

    move-result-object p1

    const-string v0, "onRebind called with null intent"

    iget-object p1, p1, Lc5/e3;->f:Lc5/c3;

    invoke-virtual {p1, v0}, Lc5/c3;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lc5/x6;->c()Lc5/e3;

    move-result-object v0

    const-string v1, "onRebind called. action"

    iget-object v0, v0, Lc5/e3;->p:Lc5/c3;

    invoke-virtual {v0, p1, v1}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Landroid/content/Intent;)V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lc5/x6;->c()Lc5/e3;

    move-result-object p1

    const-string v0, "onUnbind called with null intent"

    iget-object p1, p1, Lc5/e3;->f:Lc5/c3;

    invoke-virtual {p1, v0}, Lc5/c3;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lc5/x6;->c()Lc5/e3;

    move-result-object v0

    const-string v1, "onUnbind called for intent. action"

    iget-object v0, v0, Lc5/e3;->p:Lc5/c3;

    invoke-virtual {v0, p1, v1}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final c()Lc5/e3;
    .locals 2

    .line 1
    iget-object v0, p0, Lc5/x6;->a:Landroid/content/Context;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1, v1}, Lc5/i4;->r(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/e1;Ljava/lang/Long;)Lc5/i4;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v0, v0, Lc5/i4;->j:Lc5/e3;

    .line 9
    .line 10
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method
