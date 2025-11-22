.class public final Lp6/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp6/d;


# instance fields
.field public final a:Lp6/a;

.field public final b:Lp6/c;

.field public final c:Lp6/b;

.field public final d:J


# direct methods
.method public constructor <init>(JLp6/a;Lp6/c;Lp6/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lp6/e;->d:J

    iput-object p3, p0, Lp6/e;->a:Lp6/a;

    iput-object p4, p0, Lp6/e;->b:Lp6/c;

    iput-object p5, p0, Lp6/e;->c:Lp6/b;

    return-void
.end method


# virtual methods
.method public final a()Lp6/b;
    .locals 1

    iget-object v0, p0, Lp6/e;->c:Lp6/b;

    return-object v0
.end method

.method public final b()Lp6/c;
    .locals 1

    iget-object v0, p0, Lp6/e;->b:Lp6/c;

    return-object v0
.end method
