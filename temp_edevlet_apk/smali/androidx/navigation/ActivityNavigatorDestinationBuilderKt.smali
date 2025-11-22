.class public final Landroidx/navigation/ActivityNavigatorDestinationBuilderKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a+\u0010\u0007\u001a\u00020\u0005*\u00020\u00002\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u00012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003H\u0086\u0008\u00a8\u0006\u0008"
    }
    d2 = {
        "Landroidx/navigation/NavGraphBuilder;",
        "",
        "id",
        "Lkotlin/Function1;",
        "Landroidx/navigation/ActivityNavigatorDestinationBuilder;",
        "Ll9/m;",
        "builder",
        "activity",
        "navigation-runtime-ktx_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# direct methods
.method public static final activity(Landroidx/navigation/NavGraphBuilder;ILx9/l;)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavGraphBuilder;",
            "I",
            "Lx9/l<",
            "-",
            "Landroidx/navigation/ActivityNavigatorDestinationBuilder;",
            "Ll9/m;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$this$activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/navigation/NavGraphBuilder;->getProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object v0

    const-class v1, Landroidx/navigation/ActivityNavigator;

    invoke-virtual {v0, v1}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/Class;)Landroidx/navigation/Navigator;

    move-result-object v0

    const-string v1, "getNavigator(clazz.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/navigation/ActivityNavigator;

    new-instance v1, Landroidx/navigation/ActivityNavigatorDestinationBuilder;

    invoke-direct {v1, v0, p1}, Landroidx/navigation/ActivityNavigatorDestinationBuilder;-><init>(Landroidx/navigation/ActivityNavigator;I)V

    invoke-interface {p2, v1}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v1}, Landroidx/navigation/NavGraphBuilder;->destination(Landroidx/navigation/NavDestinationBuilder;)V

    return-void
.end method
