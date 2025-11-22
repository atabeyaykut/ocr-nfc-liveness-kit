.class public final Lj/j$c;
.super Lr9/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj/j;->a(Lp9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lr9/e;
    c = "coil.fetch.HttpUriFetcher"
    f = "HttpUriFetcher.kt"
    l = {
        0x4c,
        0x69
    }
    m = "fetch"
.end annotation


# instance fields
.field public a:Lj/j;

.field public b:Lh/a$b;

.field public c:Ljava/lang/Object;

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lj/j;

.field public f:I


# direct methods
.method public constructor <init>(Lj/j;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/j;",
            "Lp9/d<",
            "-",
            "Lj/j$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lj/j$c;->e:Lj/j;

    invoke-direct {p0, p2}, Lr9/c;-><init>(Lp9/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lj/j$c;->d:Ljava/lang/Object;

    iget p1, p0, Lj/j$c;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lj/j$c;->f:I

    iget-object p1, p0, Lj/j$c;->e:Lj/j;

    invoke-virtual {p1, p0}, Lj/j;->a(Lp9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
