.class public final Lj/j$b;
.super Lr9/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj/j;->b(Lrc/x;Lp9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lr9/e;
    c = "coil.fetch.HttpUriFetcher"
    f = "HttpUriFetcher.kt"
    l = {
        0xdf
    }
    m = "executeNetworkRequest"
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lj/j;

.field public c:I


# direct methods
.method public constructor <init>(Lj/j;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/j;",
            "Lp9/d<",
            "-",
            "Lj/j$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lj/j$b;->b:Lj/j;

    invoke-direct {p0, p2}, Lr9/c;-><init>(Lp9/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iput-object p1, p0, Lj/j$b;->a:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lj/j$b;->c:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lj/j$b;->c:I

    .line 9
    .line 10
    sget-object p1, Lj/j;->f:Lrc/c;

    .line 11
    .line 12
    iget-object p1, p0, Lj/j$b;->b:Lj/j;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, v0, p0}, Lj/j;->b(Lrc/x;Lp9/d;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method
