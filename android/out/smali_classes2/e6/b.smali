.class public final synthetic Le6/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La7/a$a;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:J

.field public final synthetic d:Lj6/c0;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;JLj6/c0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le6/b;->a:Ljava/lang/String;

    iput-object p2, p0, Le6/b;->b:Ljava/lang/String;

    iput-wide p3, p0, Le6/b;->c:J

    iput-object p5, p0, Le6/b;->d:Lj6/c0;

    return-void
.end method


# virtual methods
.method public final a(La7/b;)V
    .locals 6

    .line 1
    iget-object v1, p0, Le6/b;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v2, p0, Le6/b;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-wide v3, p0, Le6/b;->c:J

    .line 6
    .line 7
    iget-object v5, p0, Le6/b;->d:Lj6/c0;

    .line 8
    .line 9
    invoke-interface {p1}, La7/b;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    move-object v0, p1

    .line 14
    check-cast v0, Le6/a;

    .line 15
    .line 16
    invoke-interface/range {v0 .. v5}, Le6/a;->c(Ljava/lang/String;Ljava/lang/String;JLj6/c0;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
