.class public final Lwb/c;
.super Lwb/a;
.source "SourceFile"

# interfaces
.implements Lwb/f;


# instance fields
.field public final c:Lma/a;

.field public final d:Llb/f;


# direct methods
.method public constructor <init>(Lma/a;Lcc/e0;Llb/f;Lwb/g;)V
    .locals 1

    const-string v0, "receiverType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2, p4}, Lwb/a;-><init>(Lcc/e0;Lwb/g;)V

    iput-object p1, p0, Lwb/c;->c:Lma/a;

    iput-object p3, p0, Lwb/c;->d:Llb/f;

    return-void
.end method


# virtual methods
.method public final a()Llb/f;
    .locals 1

    iget-object v0, p0, Lwb/c;->d:Llb/f;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cxt { "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lwb/c;->c:Lma/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
