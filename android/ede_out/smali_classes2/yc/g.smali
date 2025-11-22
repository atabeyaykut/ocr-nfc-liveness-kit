.class public final Lyc/g;
.super Luc/a;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lyc/f$d;

.field public final synthetic f:Lkotlin/jvm/internal/v;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lyc/f$d;Lkotlin/jvm/internal/v;)V
    .locals 0

    iput-object p2, p0, Lyc/g;->e:Lyc/f$d;

    iput-object p3, p0, Lyc/g;->f:Lkotlin/jvm/internal/v;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Luc/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 3

    .line 1
    iget-object v0, p0, Lyc/g;->e:Lyc/f$d;

    .line 2
    .line 3
    iget-object v0, v0, Lyc/f$d;->b:Lyc/f;

    .line 4
    .line 5
    iget-object v1, v0, Lyc/f;->b:Lyc/f$c;

    .line 6
    .line 7
    iget-object v2, p0, Lyc/g;->f:Lkotlin/jvm/internal/v;

    .line 8
    .line 9
    iget-object v2, v2, Lkotlin/jvm/internal/v;->a:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Lyc/v;

    .line 12
    .line 13
    invoke-virtual {v1, v0, v2}, Lyc/f$c;->a(Lyc/f;Lyc/v;)V

    .line 14
    .line 15
    .line 16
    const-wide/16 v0, -0x1

    .line 17
    .line 18
    return-wide v0
.end method
