.class public final synthetic Lg7/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lg7/g;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final synthetic b:Landroid/content/Intent;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final synthetic c:Lh5/l;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>(Lg7/g;Landroid/content/Intent;Lh5/l;)V
    .locals 0
    .param p1    # Lg7/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lh5/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg7/e;->a:Lg7/g;

    iput-object p2, p0, Lg7/e;->b:Landroid/content/Intent;

    iput-object p3, p0, Lg7/e;->c:Lh5/l;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lg7/e;->b:Landroid/content/Intent;

    .line 2
    .line 3
    iget-object v1, p0, Lg7/e;->c:Lh5/l;

    .line 4
    .line 5
    iget-object v2, p0, Lg7/e;->a:Lg7/g;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    :try_start_0
    invoke-virtual {v2, v0}, Lg7/g;->c(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v3}, Lh5/l;->b(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    invoke-virtual {v1, v3}, Lh5/l;->b(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    throw v0
.end method
