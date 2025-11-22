.class public final Lpc/a$j;
.super Lr9/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpc/a;->h(Lp9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lr9/e;
    c = "kotlinx.coroutines.channels.AbstractChannel"
    f = "AbstractChannel.kt"
    l = {
        0x279
    }
    m = "receiveCatching-JP2dKIU"
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lpc/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpc/a<",
            "TE;>;"
        }
    .end annotation
.end field

.field public c:I


# direct methods
.method public constructor <init>(Lpc/a;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpc/a<",
            "TE;>;",
            "Lp9/d<",
            "-",
            "Lpc/a$j;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lpc/a$j;->b:Lpc/a;

    invoke-direct {p0, p2}, Lr9/c;-><init>(Lp9/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iput-object p1, p0, Lpc/a$j;->a:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lpc/a$j;->c:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lpc/a$j;->c:I

    .line 9
    .line 10
    iget-object p1, p0, Lpc/a$j;->b:Lpc/a;

    .line 11
    .line 12
    invoke-virtual {p1, p0}, Lpc/a;->h(Lp9/d;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    sget-object v0, Lq9/a;->a:Lq9/a;

    .line 17
    .line 18
    if-ne p1, v0, :cond_0

    .line 19
    .line 20
    return-object p1

    .line 21
    :cond_0
    new-instance v0, Lpc/j;

    .line 22
    .line 23
    invoke-direct {v0, p1}, Lpc/j;-><init>(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method
