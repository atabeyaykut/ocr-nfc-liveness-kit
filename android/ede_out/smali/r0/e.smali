.class public final Lr0/e;
.super Lr9/i;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr9/i;",
        "Lx9/p<",
        "Ljava/lang/Object;",
        "Lp9/d<",
        "-",
        "Ll9/m;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lr9/e;
    c = "com.airbnb.mvrx.DefaultViewModelDelegateFactory$createLazyViewModel$1$1$1"
    f = "ViewModelDelegateProvider.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic a:Lr0/f;


# direct methods
.method public constructor <init>(Lp9/d;Lr0/f;)V
    .locals 0

    iput-object p2, p0, Lr0/e;->a:Lr0/f;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lr9/i;-><init>(ILp9/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lp9/d;)Lp9/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lp9/d<",
            "*>;)",
            "Lp9/d<",
            "Ll9/m;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lr0/e;

    iget-object v0, p0, Lr0/e;->a:Lr0/f;

    invoke-direct {p1, p2, v0}, Lr0/e;-><init>(Lp9/d;Lr0/f;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lp9/d;

    invoke-virtual {p0, p1, p2}, Lr0/e;->create(Ljava/lang/Object;Lp9/d;)Lp9/d;

    move-result-object p1

    check-cast p1, Lr0/e;

    sget-object p2, Ll9/m;->a:Ll9/m;

    invoke-virtual {p1, p2}, Lr0/e;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    iget-object p1, p0, Lr0/e;->a:Lr0/f;

    iget-object p1, p1, Lr0/f;->b:Landroidx/fragment/app/Fragment;

    check-cast p1, Lr0/w;

    invoke-interface {p1}, Lr0/w;->w()V

    sget-object p1, Ll9/m;->a:Ll9/m;

    return-object p1
.end method
