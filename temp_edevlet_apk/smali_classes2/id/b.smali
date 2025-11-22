.class public final Lid/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lid/c;

.field public static b:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lid/d;->c:Lid/a;

    sput-object v0, Lid/b;->a:Lid/c;

    const/4 v0, 0x0

    sput-boolean v0, Lid/b;->b:Z

    return-void
.end method

.method public static varargs a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lid/b;->a:Lid/c;

    invoke-interface {v0, p0, p1, p2}, Lid/c;->j(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs b(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lid/b;->a:Lid/c;

    invoke-interface {v0, p0, p1, p2, p3}, Lid/c;->e(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lid/b;->a:Lid/c;

    invoke-interface {v0, p0, p1, p2}, Lid/c;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lid/b;->a:Lid/c;

    invoke-interface {v0, p0, p1, p2}, Lid/c;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs e(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lid/b;->a:Lid/c;

    invoke-interface {v0, p0, p1, p2, p3}, Lid/c;->f(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lid/b;->a:Lid/c;

    invoke-interface {v0, p0, p1, p2}, Lid/c;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
