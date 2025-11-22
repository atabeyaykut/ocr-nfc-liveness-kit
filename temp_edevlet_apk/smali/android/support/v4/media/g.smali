.class public final Landroid/support/v4/media/g;
.super Landroid/support/v4/media/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/support/v4/media/f;",
        ">",
        "Landroid/support/v4/media/e<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/support/v4/media/MediaBrowserCompat$i$b;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/media/e;-><init>(Landroid/support/v4/media/MediaBrowserCompat$i$a;)V

    return-void
.end method


# virtual methods
.method public final onChildrenLoaded(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-static {p3}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V

    iget-object p1, p0, Landroid/support/v4/media/e;->a:Landroid/support/v4/media/d;

    check-cast p1, Landroid/support/v4/media/f;

    invoke-interface {p1, p2}, Landroid/support/v4/media/f;->c(Ljava/util/List;)V

    return-void
.end method

.method public final onError(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p2}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V

    iget-object p1, p0, Landroid/support/v4/media/e;->a:Landroid/support/v4/media/d;

    check-cast p1, Landroid/support/v4/media/f;

    invoke-interface {p1}, Landroid/support/v4/media/f;->d()V

    return-void
.end method
