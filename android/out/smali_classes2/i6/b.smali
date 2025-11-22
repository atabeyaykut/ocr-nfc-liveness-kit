.class public final Li6/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li6/b$a;
    }
.end annotation


# static fields
.field public static final c:Li6/b$a;


# instance fields
.field public final a:Lm6/f;

.field public b:Li6/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Li6/b$a;

    invoke-direct {v0}, Li6/b$a;-><init>()V

    sput-object v0, Li6/b;->c:Li6/b$a;

    return-void
.end method

.method public constructor <init>(Lm6/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li6/b;->a:Lm6/f;

    sget-object p1, Li6/b;->c:Li6/b$a;

    iput-object p1, p0, Li6/b;->b:Li6/a;

    return-void
.end method

.method public constructor <init>(Lm6/f;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Li6/b;-><init>(Lm6/f;)V

    invoke-virtual {p0, p2}, Li6/b;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Li6/b;->b:Li6/a;

    .line 2
    .line 3
    invoke-interface {v0}, Li6/a;->a()V

    .line 4
    .line 5
    .line 6
    sget-object v0, Li6/b;->c:Li6/b$a;

    .line 7
    .line 8
    iput-object v0, p0, Li6/b;->b:Li6/a;

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Li6/b;->a:Lm6/f;

    .line 14
    .line 15
    const-string v1, "userlog"

    .line 16
    .line 17
    invoke-virtual {v0, p1, v1}, Lm6/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    new-instance v0, Li6/d;

    .line 22
    .line 23
    invoke-direct {v0, p1}, Li6/d;-><init>(Ljava/io/File;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Li6/b;->b:Li6/a;

    .line 27
    .line 28
    return-void
.end method
