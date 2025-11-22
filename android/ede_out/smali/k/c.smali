.class public final Lk/c;
.super Lr9/c;
.source "SourceFile"


# annotations
.annotation runtime Lr9/e;
    c = "coil.intercept.EngineInterceptor"
    f = "EngineInterceptor.kt"
    l = {
        0x7a,
        0x7e,
        0x90
    }
    m = "execute"
.end annotation


# instance fields
.field public a:Lk/a;

.field public b:Lp/g;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Lkotlin/jvm/internal/v;

.field public f:Lkotlin/jvm/internal/v;

.field public g:Lkotlin/jvm/internal/v;

.field public h:Lkotlin/jvm/internal/v;

.field public synthetic j:Ljava/lang/Object;

.field public final synthetic k:Lk/a;

.field public l:I


# direct methods
.method public constructor <init>(Lk/a;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/a;",
            "Lp9/d<",
            "-",
            "Lk/c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lk/c;->k:Lk/a;

    invoke-direct {p0, p2}, Lr9/c;-><init>(Lp9/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iput-object p1, p0, Lk/c;->j:Ljava/lang/Object;

    iget p1, p0, Lk/c;->l:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lk/c;->l:I

    iget-object v0, p0, Lk/c;->k:Lk/a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lk/a;->c(Lk/a;Lp/g;Ljava/lang/Object;Lp/k;Le/b;Lp9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
