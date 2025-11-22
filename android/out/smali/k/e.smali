.class public final Lk/e;
.super Lr9/c;
.source "SourceFile"


# annotations
.annotation runtime Lr9/e;
    c = "coil.intercept.EngineInterceptor"
    f = "EngineInterceptor.kt"
    l = {
        0x49
    }
    m = "intercept"
.end annotation


# instance fields
.field public a:Lk/a;

.field public b:Lk/h$a;

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lk/a;

.field public e:I


# direct methods
.method public constructor <init>(Lk/a;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/a;",
            "Lp9/d<",
            "-",
            "Lk/e;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lk/e;->d:Lk/a;

    invoke-direct {p0, p2}, Lr9/c;-><init>(Lp9/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lk/e;->c:Ljava/lang/Object;

    iget p1, p0, Lk/e;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lk/e;->e:I

    iget-object p1, p0, Lk/e;->d:Lk/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lk/a;->a(Lk/i;Lp9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
