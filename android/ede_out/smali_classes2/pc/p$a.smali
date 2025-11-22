.class public final Lpc/p$a;
.super Lr9/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpc/p;->a(Lpc/r;Lx9/a;Lp9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lr9/e;
    c = "kotlinx.coroutines.channels.ProduceKt"
    f = "Produce.kt"
    l = {
        0x99
    }
    m = "awaitClose"
.end annotation


# instance fields
.field public a:Lpc/r;

.field public b:Lx9/a;

.field public synthetic c:Ljava/lang/Object;

.field public d:I


# direct methods
.method public constructor <init>(Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp9/d<",
            "-",
            "Lpc/p$a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lr9/c;-><init>(Lp9/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lpc/p$a;->c:Ljava/lang/Object;

    iget p1, p0, Lpc/p$a;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lpc/p$a;->d:I

    const/4 p1, 0x0

    invoke-static {p1, p1, p0}, Lpc/p;->a(Lpc/r;Lx9/a;Lp9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
