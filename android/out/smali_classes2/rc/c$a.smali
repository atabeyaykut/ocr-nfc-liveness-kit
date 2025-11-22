.class public final Lrc/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrc/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public final c:I

.field public d:I

.field public final e:I

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lrc/c$a;->c:I

    iput v0, p0, Lrc/c$a;->d:I

    iput v0, p0, Lrc/c$a;->e:I

    return-void
.end method


# virtual methods
.method public final a()Lrc/c;
    .locals 15

    new-instance v14, Lrc/c;

    iget-boolean v1, p0, Lrc/c$a;->a:Z

    iget-boolean v2, p0, Lrc/c$a;->b:Z

    iget v3, p0, Lrc/c$a;->c:I

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, p0, Lrc/c$a;->d:I

    iget v9, p0, Lrc/c$a;->e:I

    iget-boolean v10, p0, Lrc/c$a;->f:Z

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Lrc/c;-><init>(ZZIIZZZIIZZZLjava/lang/String;)V

    return-object v14
.end method
