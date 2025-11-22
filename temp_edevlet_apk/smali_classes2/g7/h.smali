.class public final synthetic Lg7/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh5/b;


# instance fields
.field public final synthetic a:Landroid/content/Context;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final synthetic b:Landroid/content/Intent;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg7/h;->a:Landroid/content/Context;

    iput-object p2, p0, Lg7/h;->b:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final c(Lh5/k;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lh5/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Lw3/d;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lh5/k;->i()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x192

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lg7/h;->a:Landroid/content/Context;

    iget-object v0, p0, Lg7/h;->b:Landroid/content/Intent;

    invoke-static {p1, v0}, Lg7/m;->a(Landroid/content/Context;Landroid/content/Intent;)Lh5/k;

    move-result-object p1

    sget-object v0, Lg7/l;->a:Lg7/l;

    sget-object v1, Lg7/j;->a:Lg7/j;

    invoke-virtual {p1, v0, v1}, Lh5/k;->e(Ljava/util/concurrent/Executor;Lh5/b;)Lh5/k;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method
