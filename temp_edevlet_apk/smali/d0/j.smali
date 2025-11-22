.class public final Ld0/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ld0/r<",
        "Ld0/f;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/ref/WeakReference;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Landroid/content/Context;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ld0/j;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Ld0/j;->b:Landroid/content/Context;

    iput p3, p0, Ld0/j;->c:I

    iput-object p4, p0, Ld0/j;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Ld0/j;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ld0/j;->b:Landroid/content/Context;

    :goto_0
    iget v1, p0, Ld0/j;->c:I

    iget-object v2, p0, Ld0/j;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Ld0/g;->e(Landroid/content/Context;ILjava/lang/String;)Ld0/r;

    move-result-object v0

    return-object v0
.end method
