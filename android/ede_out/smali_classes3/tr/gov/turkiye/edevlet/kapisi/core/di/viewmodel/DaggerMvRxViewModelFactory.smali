.class public abstract Ltr/gov/turkiye/edevlet/kapisi/core/di/viewmodel/DaggerMvRxViewModelFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr0/r0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VM:",
        "Laf/c<",
        "TS;>;S::",
        "Lr0/p;",
        ">",
        "Ljava/lang/Object;",
        "Lr0/r0<",
        "TVM;TS;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008&\u0018\u0000*\u000e\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u00028\u00010\u0001*\u0008\u0008\u0001\u0010\u0004*\u00020\u00032\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0005B\u001d\u0012\u0014\u0010\u000c\u001a\u0010\u0012\u000c\u0008\u0001\u0012\u0008\u0012\u0004\u0012\u00028\u00010\u00010\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000eJ!\u0010\t\u001a\u0004\u0018\u00018\u00002\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00028\u0001H\u0016\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000f"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/core/di/viewmodel/DaggerMvRxViewModelFactory;",
        "Laf/c;",
        "VM",
        "Lr0/p;",
        "S",
        "Lr0/r0;",
        "Lr0/f1;",
        "viewModelContext",
        "state",
        "create",
        "(Lr0/f1;Lr0/p;)Laf/c;",
        "Ljava/lang/Class;",
        "viewModelClass",
        "<init>",
        "(Ljava/lang/Class;)V",
        "core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Laf/c<",
            "TS;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Laf/c<",
            "TS;>;>;)V"
        }
    .end annotation

    const-string v0, "viewModelClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/core/di/viewmodel/DaggerMvRxViewModelFactory;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public create(Lr0/f1;Lr0/p;)Laf/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr0/f1;",
            "TS;)TVM;"
        }
    .end annotation

    const-string v0, "viewModelContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "state"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget p1, Ltr/gov/turkiye/edevlet/kapisi/core/di/viewmodel/a;->a:I

    .line 2
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/core/di/viewmodel/a$a;->a:Ltr/gov/turkiye/edevlet/kapisi/core/di/viewmodel/a;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    invoke-static {p1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 3
    check-cast p1, Lcf/b;

    .line 4
    iget-object v0, p1, Lcf/b;->b:Lc5/v;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "viewModelFactoryMap"

    .line 5
    iget-object p1, p1, Lcf/b;->c:Ljava/util/Map;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    check-cast p1, Ljava/util/Map;

    .line 7
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/core/di/viewmodel/DaggerMvRxViewModelFactory;->a:Ljava/lang/Class;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcf/a;

    const/4 v0, 0x0

    if-nez p1, :cond_1

    move-object p1, v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1, p2}, Lcf/a;->a(Lr0/p;)Laf/c;

    move-result-object v0

    :cond_2
    const-string p1, "null cannot be cast to non-null type VM of tr.gov.turkiye.edevlet.kapisi.core.di.viewmodel.DaggerMvRxViewModelFactory.createViewModel"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 8
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "AppComponent requested without being initialized first. Call initAppComponent() beforerequesting an instance."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic create(Lr0/f1;Lr0/p;)Lr0/z;
    .locals 0

    invoke-virtual {p0, p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/core/di/viewmodel/DaggerMvRxViewModelFactory;->create(Lr0/f1;Lr0/p;)Laf/c;

    move-result-object p1

    return-object p1
.end method

.method public initialState(Lr0/f1;)Lr0/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr0/f1;",
            ")TS;"
        }
    .end annotation

    .line 1
    const-string v0, "viewModelContext"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return-object p1
.end method
