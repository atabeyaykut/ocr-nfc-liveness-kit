.class public final Lk/b;
.super Lr9/c;
.source "SourceFile"


# annotations
.annotation runtime Lr9/e;
    c = "coil.intercept.EngineInterceptor"
    f = "EngineInterceptor.kt"
    l = {
        0xc7
    }
    m = "decode"
.end annotation


# instance fields
.field public a:Lk/a;

.field public b:Lj/l;

.field public c:Le/a;

.field public d:Lp/g;

.field public e:Ljava/lang/Object;

.field public f:Lp/k;

.field public g:Le/b;

.field public h:Lg/g;

.field public j:I

.field public synthetic k:Ljava/lang/Object;

.field public final synthetic l:Lk/a;

.field public m:I


# direct methods
.method public constructor <init>(Lk/a;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/a;",
            "Lp9/d<",
            "-",
            "Lk/b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lk/b;->l:Lk/a;

    invoke-direct {p0, p2}, Lr9/c;-><init>(Lp9/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iput-object p1, p0, Lk/b;->k:Ljava/lang/Object;

    iget p1, p0, Lk/b;->m:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lk/b;->m:I

    iget-object v0, p0, Lk/b;->l:Lk/a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, p0

    invoke-static/range {v0 .. v7}, Lk/a;->b(Lk/a;Lj/l;Le/a;Lp/g;Ljava/lang/Object;Lp/k;Le/b;Lp9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
