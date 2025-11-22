.class public final Lk/a$b;
.super Lr9/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk/a;->d(Le/a;Lp/g;Ljava/lang/Object;Lp/k;Le/b;Lp9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lr9/e;
    c = "coil.intercept.EngineInterceptor"
    f = "EngineInterceptor.kt"
    l = {
        0xa5
    }
    m = "fetch"
.end annotation


# instance fields
.field public a:Lk/a;

.field public b:Le/a;

.field public c:Lp/g;

.field public d:Ljava/lang/Object;

.field public e:Lp/k;

.field public f:Le/b;

.field public g:Lj/h;

.field public h:I

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
            "Lk/a$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lk/a$b;->k:Lk/a;

    invoke-direct {p0, p2}, Lr9/c;-><init>(Lp9/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iput-object p1, p0, Lk/a$b;->j:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lk/a$b;->l:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lk/a$b;->l:I

    .line 9
    .line 10
    iget-object v0, p0, Lk/a$b;->k:Lk/a;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v5, 0x0

    .line 17
    move-object v6, p0

    .line 18
    invoke-virtual/range {v0 .. v6}, Lk/a;->d(Le/a;Lp/g;Ljava/lang/Object;Lp/k;Le/b;Lp9/d;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method
