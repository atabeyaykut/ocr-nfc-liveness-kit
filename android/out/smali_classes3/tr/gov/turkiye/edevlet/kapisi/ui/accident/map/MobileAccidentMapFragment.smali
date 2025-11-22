.class public final Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;
.super Lee/a;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;",
        "Lee/a;",
        "<init>",
        "()V",
        "ui-mobile-accident_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final synthetic m:[Lda/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lda/m<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

.field public final b:Ll9/e;

.field public c:Lv/e;

.field public d:Landroid/content/Context;

.field public e:Ljava/lang/Double;

.field public f:Ljava/lang/Double;

.field public g:Ljava/lang/Double;

.field public h:Ljava/lang/Double;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Lda/m;

    .line 3
    .line 4
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;

    .line 5
    .line 6
    const-string v2, "mMapBinding"

    .line 7
    .line 8
    const-string v3, "getMMapBinding()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentMapBinding;"

    .line 9
    .line 10
    invoke-static {v1, v2, v3}, Landroidx/room/util/a;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lda/l;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const/4 v3, 0x0

    .line 15
    aput-object v2, v0, v3

    .line 16
    .line 17
    const-string v2, "viewModel"

    .line 18
    .line 19
    const-string v3, "getViewModel()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapViewModel;"

    .line 20
    .line 21
    invoke-static {v1, v2, v3}, Landroidx/room/util/a;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lda/l;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const/4 v2, 0x1

    .line 26
    aput-object v1, v0, v2

    .line 27
    .line 28
    sput-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;->m:[Lda/m;

    .line 29
    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const v0, 0x7f0d0065

    invoke-direct {p0, v0}, Lee/a;-><init>(I)V

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment$b;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment$b;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/clearcut/d0;->C(Landroidx/fragment/app/Fragment;Lx9/l;)Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    move-result-object v0

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;->a:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    const-class v0, Lkh/e;

    invoke-static {v0}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    move-result-object v0

    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment$d;

    invoke-direct {v1, p0, v0, v0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment$d;-><init>(Landroidx/fragment/app/Fragment;Lda/d;Lda/d;)V

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment$e;

    invoke-direct {v2, v0, v1, v0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment$e;-><init>(Lda/d;Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment$d;Lda/d;)V

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;->m:[Lda/m;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v2, p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment$e;->t(Ljava/lang/Object;Lda/m;)Ll9/e;

    move-result-object v0

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;->b:Ll9/e;

    return-void
.end method

.method public static E(Landroid/content/Context;)Lz4/a;
    .locals 3

    .line 1
    const v0, 0x7f0800d5

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-static {p0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {p0, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 32
    .line 33
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "createBitmap(\n          \u2026onfig.ARGB_8888\n        )"

    .line 38
    .line 39
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    new-instance v1, Landroid/graphics/Canvas;

    .line 43
    .line 44
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 48
    .line 49
    .line 50
    :try_start_0
    new-instance p0, Lz4/a;

    .line 51
    .line 52
    sget-object v1, Lx5/a;->m:Ln4/i;

    .line 53
    .line 54
    const-string v2, "IBitmapDescriptorFactory is not initialized"

    .line 55
    .line 56
    invoke-static {v1, v2}, Lr3/r;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-interface {v1, v0}, Ln4/i;->y(Landroid/graphics/Bitmap;)Lz3/b;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-direct {p0, v0}, Lz4/a;-><init>(Lz3/b;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    return-object p0

    .line 67
    :catch_0
    move-exception p0

    .line 68
    new-instance v0, Lz4/g;

    .line 69
    .line 70
    invoke-direct {v0, p0}, Lz4/g;-><init>(Landroid/os/RemoteException;)V

    .line 71
    .line 72
    .line 73
    throw v0
.end method

.method public static F(Lcom/google/android/gms/maps/model/LatLng;Lz4/b;)Z
    .locals 10

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [F

    .line 3
    .line 4
    iget-wide v1, p0, Lcom/google/android/gms/maps/model/LatLng;->a:D

    .line 5
    .line 6
    iget-wide v3, p0, Lcom/google/android/gms/maps/model/LatLng;->b:D

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    :try_start_0
    iget-object p0, p1, Lz4/b;->a:Ln4/l;

    .line 12
    .line 13
    invoke-interface {p0}, Ln4/l;->f()Lcom/google/android/gms/maps/model/LatLng;

    .line 14
    .line 15
    .line 16
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 17
    iget-object p1, p1, Lz4/b;->a:Ln4/l;

    .line 18
    .line 19
    iget-wide v5, p0, Lcom/google/android/gms/maps/model/LatLng;->a:D

    .line 20
    .line 21
    :try_start_1
    invoke-interface {p1}, Ln4/l;->f()Lcom/google/android/gms/maps/model/LatLng;

    .line 22
    .line 23
    .line 24
    move-result-object p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 25
    iget-wide v7, p0, Lcom/google/android/gms/maps/model/LatLng;->b:D

    .line 26
    .line 27
    move-object v9, v0

    .line 28
    invoke-static/range {v1 .. v9}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    .line 29
    .line 30
    .line 31
    const/4 p0, 0x0

    .line 32
    aget v0, v0, p0

    .line 33
    .line 34
    float-to-double v0, v0

    .line 35
    :try_start_2
    invoke-interface {p1}, Ln4/l;->d()D

    .line 36
    .line 37
    .line 38
    move-result-wide v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 39
    cmpg-double p1, v0, v2

    .line 40
    .line 41
    if-gtz p1, :cond_0

    .line 42
    .line 43
    const/4 p0, 0x1

    .line 44
    :cond_0
    return p0

    .line 45
    :catch_0
    move-exception p0

    .line 46
    new-instance p1, Lz4/g;

    .line 47
    .line 48
    invoke-direct {p1, p0}, Lz4/g;-><init>(Landroid/os/RemoteException;)V

    .line 49
    .line 50
    .line 51
    throw p1

    .line 52
    :catch_1
    move-exception p0

    .line 53
    new-instance p1, Lz4/g;

    .line 54
    .line 55
    invoke-direct {p1, p0}, Lz4/g;-><init>(Landroid/os/RemoteException;)V

    .line 56
    .line 57
    .line 58
    throw p1

    .line 59
    :catch_2
    move-exception p0

    .line 60
    new-instance p1, Lz4/g;

    .line 61
    .line 62
    invoke-direct {p1, p0}, Lz4/g;-><init>(Landroid/os/RemoteException;)V

    .line 63
    .line 64
    .line 65
    throw p1
.end method


# virtual methods
.method public final G(I)V
    .locals 4

    .line 1
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;->d:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    sget v0, Lke/d;->a:I

    .line 6
    .line 7
    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;->m:[Lda/m;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    aget-object v0, v0, v1

    .line 11
    .line 12
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;->a:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    .line 13
    .line 14
    invoke-virtual {v1, p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;->a(Landroidx/fragment/app/Fragment;Lda/m;)Landroidx/viewbinding/ViewBinding;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentMapBinding;

    .line 19
    .line 20
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentMapBinding;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 21
    .line 22
    const-string v1, "mMapBinding.mktMapContainer"

    .line 23
    .line 24
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const v1, 0x7f060025

    .line 28
    .line 29
    .line 30
    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    const v2, 0x7f060097

    .line 35
    .line 36
    .line 37
    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    const v2, 0x7f130133

    .line 42
    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    invoke-static {v0, v2, v3, v1, p1}, Lke/d$a;->e(Landroid/view/ViewGroup;ILandroid/view/View;II)Lke/d;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    if-eqz p1, :cond_0

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->show()V

    .line 52
    .line 53
    .line 54
    :cond_0
    return-void
.end method

.method public final invalidate()V
    .locals 2

    .line 1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;->b:Ll9/e;

    .line 2
    .line 3
    invoke-interface {v0}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lkh/e;

    .line 8
    .line 9
    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment$a;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment$a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Lx5/a;->u(Lr0/z;Lx9/l;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lc5/w;->v(Landroidx/fragment/app/Fragment;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    const-string p3, "inflater"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const p3, 0x7f0d0065

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string p2, "inflater.inflate(R.layou\u2026nt_map, container, false)"

    .line 15
    .line 16
    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    const p3, 0x7f0a0188

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, p3}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    check-cast p2, Lcom/google/android/gms/maps/SupportMapFragment;

    .line 31
    .line 32
    if-eqz p2, :cond_1

    .line 33
    .line 34
    new-instance p3, Lkh/a;

    .line 35
    .line 36
    invoke-direct {p3, p0}, Lkh/a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;)V

    .line 37
    .line 38
    .line 39
    const-string v0, "getMapAsync must be called on the main thread."

    .line 40
    .line 41
    invoke-static {v0}, Lr3/r;->e(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object p2, p2, Lcom/google/android/gms/maps/SupportMapFragment;->a:Lx4/i;

    .line 45
    .line 46
    iget-object v0, p2, Lz3/a;->a:Lz3/c;

    .line 47
    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    check-cast v0, Lx4/h;

    .line 51
    .line 52
    :try_start_0
    iget-object p2, v0, Lx4/h;->b:Ly4/c;

    .line 53
    .line 54
    new-instance v0, Lx4/g;

    .line 55
    .line 56
    invoke-direct {v0, p3}, Lx4/g;-><init>(Lx4/e;)V

    .line 57
    .line 58
    .line 59
    invoke-interface {p2, v0}, Ly4/c;->B(Lx4/g;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catch_0
    move-exception p1

    .line 64
    new-instance p2, Lz4/g;

    .line 65
    .line 66
    invoke-direct {p2, p1}, Lz4/g;-><init>(Landroid/os/RemoteException;)V

    .line 67
    .line 68
    .line 69
    throw p2

    .line 70
    :cond_0
    iget-object p2, p2, Lx4/i;->h:Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    :cond_1
    :goto_0
    return-object p1
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;->d:Landroid/content/Context;

    .line 14
    .line 15
    const/4 p2, 0x0

    .line 16
    const/4 v0, 0x0

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    const-string v1, "layout_inflater"

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string v1, "null cannot be cast to non-null type android.view.LayoutInflater"

    .line 26
    .line 27
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    check-cast p1, Landroid/view/LayoutInflater;

    .line 31
    .line 32
    const v1, 0x7f0d0108

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-string v1, "inflater.inflate(R.layout.progress_dialog, null)"

    .line 40
    .line 41
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    new-instance v1, Lv/e;

    .line 45
    .line 46
    iget-object v2, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;->d:Landroid/content/Context;

    .line 47
    .line 48
    invoke-static {v2}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-direct {v1, v2}, Lv/e;-><init>(Landroid/content/Context;)V

    .line 52
    .line 53
    .line 54
    iput-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;->c:Lv/e;

    .line 55
    .line 56
    invoke-static {v1, p1}, Lc5/u;->n(Lv/e;Landroid/view/View;)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;->c:Lv/e;

    .line 60
    .line 61
    if-eqz p1, :cond_0

    .line 62
    .line 63
    invoke-virtual {p1, p2}, Lv/e;->b(Z)V

    .line 64
    .line 65
    .line 66
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-eqz p1, :cond_1

    .line 71
    .line 72
    const-string v1, "latitude"

    .line 73
    .line 74
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    .line 75
    .line 76
    .line 77
    move-result-wide v1

    .line 78
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    goto :goto_0

    .line 83
    :cond_1
    move-object p1, v0

    .line 84
    :goto_0
    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;->e:Ljava/lang/Double;

    .line 85
    .line 86
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    if-eqz p1, :cond_2

    .line 91
    .line 92
    const-string v1, "longitude"

    .line 93
    .line 94
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    .line 95
    .line 96
    .line 97
    move-result-wide v1

    .line 98
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    goto :goto_1

    .line 103
    :cond_2
    move-object p1, v0

    .line 104
    :goto_1
    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;->f:Ljava/lang/Double;

    .line 105
    .line 106
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    if-eqz p1, :cond_3

    .line 111
    .line 112
    const-string v1, "accidentLatitude"

    .line 113
    .line 114
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    .line 115
    .line 116
    .line 117
    move-result-wide v1

    .line 118
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    goto :goto_2

    .line 123
    :cond_3
    move-object p1, v0

    .line 124
    :goto_2
    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;->g:Ljava/lang/Double;

    .line 125
    .line 126
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    if-eqz p1, :cond_4

    .line 131
    .line 132
    const-string v0, "accidentLongitude"

    .line 133
    .line 134
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    .line 135
    .line 136
    .line 137
    move-result-wide v0

    .line 138
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    :cond_4
    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;->h:Ljava/lang/Double;

    .line 143
    .line 144
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;->m:[Lda/m;

    .line 145
    .line 146
    aget-object p1, p1, p2

    .line 147
    .line 148
    iget-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;->a:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    .line 149
    .line 150
    invoke-virtual {p2, p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;->a(Landroidx/fragment/app/Fragment;Lda/m;)Landroidx/viewbinding/ViewBinding;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentMapBinding;

    .line 155
    .line 156
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentMapBinding;->b:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 157
    .line 158
    new-instance p2, Lnf/a;

    .line 159
    .line 160
    const/16 v0, 0xd

    .line 161
    .line 162
    invoke-direct {p2, v0, p0}, Lnf/a;-><init>(ILjava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    .line 167
    .line 168
    return-void
.end method
