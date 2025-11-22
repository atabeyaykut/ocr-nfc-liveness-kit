.class public final Lo3/m$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo3/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Lo3/k;

.field public b:Z

.field public c:[Lm3/d;

.field public d:I


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo3/m$a;->b:Z

    const/4 v0, 0x0

    iput v0, p0, Lo3/m$a;->d:I

    return-void
.end method


# virtual methods
.method public final a()Lo3/q0;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lo3/m$a;->a:Lo3/k;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "execute parameter required"

    invoke-static {v0, v1}, Lr3/r;->b(ZLjava/lang/String;)V

    new-instance v0, Lo3/q0;

    iget-object v1, p0, Lo3/m$a;->c:[Lm3/d;

    iget-boolean v2, p0, Lo3/m$a;->b:Z

    iget v3, p0, Lo3/m$a;->d:I

    invoke-direct {v0, p0, v1, v2, v3}, Lo3/q0;-><init>(Lo3/m$a;[Lm3/d;ZI)V

    return-object v0
.end method
