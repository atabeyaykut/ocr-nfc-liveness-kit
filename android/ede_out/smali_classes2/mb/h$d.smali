.class public final Lmb/h$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmb/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmb/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmb/g$a<",
        "Lmb/h$d;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Lmb/w;

.field public final c:Z

.field public final d:Z


# direct methods
.method public constructor <init>(ILmb/w;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmb/h$d;->a:I

    iput-object p2, p0, Lmb/h$d;->b:Lmb/w;

    iput-boolean p3, p0, Lmb/h$d;->c:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmb/h$d;->d:Z

    return-void
.end method


# virtual methods
.method public final I(Lmb/p$a;Lmb/p;)Lmb/h$a;
    .locals 0

    check-cast p1, Lmb/h$a;

    check-cast p2, Lmb/h;

    invoke-virtual {p1, p2}, Lmb/h$a;->j(Lmb/h;)Lmb/h$a;

    move-result-object p1

    return-object p1
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Lmb/h$d;

    .line 2
    .line 3
    iget v0, p0, Lmb/h$d;->a:I

    .line 4
    .line 5
    iget p1, p1, Lmb/h$d;->a:I

    .line 6
    .line 7
    sub-int/2addr v0, p1

    .line 8
    return v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lmb/h$d;->a:I

    return v0
.end method

.method public final g()Z
    .locals 1

    iget-boolean v0, p0, Lmb/h$d;->c:Z

    return v0
.end method

.method public final h()Lmb/w;
    .locals 1

    iget-object v0, p0, Lmb/h$d;->b:Lmb/w;

    return-object v0
.end method

.method public final l()Lmb/x;
    .locals 1

    iget-object v0, p0, Lmb/h$d;->b:Lmb/w;

    iget-object v0, v0, Lmb/w;->a:Lmb/x;

    return-object v0
.end method

.method public final m()Z
    .locals 1

    iget-boolean v0, p0, Lmb/h$d;->d:Z

    return v0
.end method
