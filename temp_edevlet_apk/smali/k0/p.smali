.class public final Lk0/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk0/b;


# instance fields
.field public final a:I

.field public final b:Lj0/b;

.field public final c:Lj0/b;

.field public final d:Lj0/b;

.field public final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILj0/b;Lj0/b;Lj0/b;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lk0/p;->a:I

    iput-object p3, p0, Lk0/p;->b:Lj0/b;

    iput-object p4, p0, Lk0/p;->c:Lj0/b;

    iput-object p5, p0, Lk0/p;->d:Lj0/b;

    iput-boolean p6, p0, Lk0/p;->e:Z

    return-void
.end method


# virtual methods
.method public final a(Ld0/l;Ll0/b;)Lf0/c;
    .locals 0

    new-instance p1, Lf0/s;

    invoke-direct {p1, p2, p0}, Lf0/s;-><init>(Ll0/b;Lk0/p;)V

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Trim Path: {start: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lk0/p;->b:Lj0/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", end: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk0/p;->c:Lj0/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", offset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk0/p;->d:Lj0/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
