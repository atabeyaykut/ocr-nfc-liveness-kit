.class public final Lga/g0$a;
.super Lga/l0$b;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lga/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lga/l0$b<",
        "TR;>;",
        "Lx9/a;"
    }
.end annotation


# instance fields
.field public final h:Lga/g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lga/g0<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lga/g0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lga/g0<",
            "+TR;>;)V"
        }
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lga/l0$b;-><init>()V

    iput-object p1, p0, Lga/g0$a;->h:Lga/g0;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lga/g0$a;->h:Lga/g0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lga/g0;->u()Lga/g0$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    new-array v1, v1, [Ljava/lang/Object;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lga/h;->call([Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public final s()Lga/l0;
    .locals 1

    iget-object v0, p0, Lga/g0$a;->h:Lga/g0;

    return-object v0
.end method
