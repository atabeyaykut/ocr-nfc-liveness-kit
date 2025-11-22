.class public final synthetic Landroidx/camera/lifecycle/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;
.implements Lc3/b$a;
.implements Lio/realm/g0$a;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/lifecycle/d;->a:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/camera/lifecycle/d;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/camera/lifecycle/d;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/camera/lifecycle/ProcessCameraProvider;

    iget-object v1, p0, Landroidx/camera/lifecycle/d;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/camera/core/CameraX;

    invoke-static {v0, p1, v1}, Landroidx/camera/lifecycle/ProcessCameraProvider;->c(Landroidx/camera/lifecycle/ProcessCameraProvider;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/core/CameraX;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(Lio/realm/g0;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/camera/lifecycle/d;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lio/realm/g0;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/camera/lifecycle/d;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;

    .line 8
    .line 9
    sget-object v2, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->k:[Lda/m;

    .line 10
    .line 11
    const-string v2, "this$0"

    .line 12
    .line 13
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-class v2, Ltr/gov/turkiye/edevlet/kapisi/data/city/MyCityListDBModel;

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Lio/realm/g0;->r(Ljava/lang/Class;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, v1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->e:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/b;

    .line 38
    .line 39
    new-instance v3, Ltr/gov/turkiye/edevlet/kapisi/data/city/MyCityListDBModel;

    .line 40
    .line 41
    invoke-direct {v3}, Ltr/gov/turkiye/edevlet/kapisi/data/city/MyCityListDBModel;-><init>()V

    .line 42
    .line 43
    .line 44
    iget-object v4, v2, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/b;->f:Ljava/lang/Integer;

    .line 45
    .line 46
    invoke-static {v4}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    invoke-virtual {v3, v4}, Ltr/gov/turkiye/edevlet/kapisi/data/city/MyCityListDBModel;->setCityId(I)V

    .line 54
    .line 55
    .line 56
    iget-object v2, v2, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/b;->e:Ljava/lang/String;

    .line 57
    .line 58
    invoke-static {v2}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/city/MyCityListDBModel;->setCityName(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v3}, Lio/realm/g0;->B(Lio/realm/s0;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    invoke-static {v1}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    const v0, 0x7f0a02d6

    .line 73
    .line 74
    .line 75
    const/4 v2, 0x1

    .line 76
    invoke-virtual {p1, v0, v2}, Landroidx/navigation/NavController;->popBackStack(IZ)Z

    .line 77
    .line 78
    .line 79
    invoke-static {v1}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    const v0, 0x7f0a02d5

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v0}, Landroidx/navigation/NavController;->navigate(I)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public final execute()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/lifecycle/d;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, La3/m;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/camera/lifecycle/d;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lu2/s;

    .line 8
    .line 9
    iget-object v0, v0, La3/m;->c:Lb3/d;

    .line 10
    .line 11
    invoke-interface {v0, v1}, Lb3/d;->R(Lu2/s;)Ljava/lang/Iterable;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method
