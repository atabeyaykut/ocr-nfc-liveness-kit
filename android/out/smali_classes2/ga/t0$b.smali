.class public final Lga/t0$b;
.super Lga/t0$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lga/t0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lga/t0$c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Lx9/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx9/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public volatile c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lx9/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx9/a<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lga/t0$c;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lga/t0$b;->c:Ljava/lang/Object;

    iput-object p1, p0, Lga/t0$b;->b:Lx9/a;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lga/t0$b;->c:Ljava/lang/Object;

    sget-object v1, Lga/t0$c;->a:Lga/t0$c$a;

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lga/t0$b;->b:Lx9/a;

    invoke-interface {v0}, Lx9/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lga/t0$b;->c:Ljava/lang/Object;

    return-object v0
.end method
