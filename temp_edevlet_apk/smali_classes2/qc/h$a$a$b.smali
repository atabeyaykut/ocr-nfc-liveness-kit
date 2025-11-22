.class public final Lqc/h$a$a$b;
.super Lr9/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqc/h$a$a;->emit(Ljava/lang/Object;Lp9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lr9/e;
    c = "kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3$1"
    f = "Merge.kt"
    l = {
        0x1e
    }
    m = "emit"
.end annotation


# instance fields
.field public a:Lqc/h$a$a;

.field public b:Ljava/lang/Object;

.field public c:Lnc/b1;

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lqc/h$a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqc/h$a$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public f:I


# direct methods
.method public constructor <init>(Lqc/h$a$a;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqc/h$a$a<",
            "-TT;>;",
            "Lp9/d<",
            "-",
            "Lqc/h$a$a$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lqc/h$a$a$b;->e:Lqc/h$a$a;

    invoke-direct {p0, p2}, Lr9/c;-><init>(Lp9/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lqc/h$a$a$b;->d:Ljava/lang/Object;

    iget p1, p0, Lqc/h$a$a$b;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lqc/h$a$a$b;->f:I

    iget-object p1, p0, Lqc/h$a$a$b;->e:Lqc/h$a$a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lqc/h$a$a;->emit(Ljava/lang/Object;Lp9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
