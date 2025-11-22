.class public final Lia/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leb/s$c;


# instance fields
.field public final synthetic a:Lkotlin/jvm/internal/t;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/t;)V
    .locals 0

    iput-object p1, p0, Lia/a;->a:Lkotlin/jvm/internal/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b(Llb/b;Lra/b;)Leb/s$a;
    .locals 0

    .line 1
    sget-object p2, Lva/w;->b:Llb/b;

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lia/a;->a:Lkotlin/jvm/internal/t;

    .line 10
    .line 11
    const/4 p2, 0x1

    .line 12
    iput-boolean p2, p1, Lkotlin/jvm/internal/t;->a:Z

    .line 13
    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    return-object p1
.end method
