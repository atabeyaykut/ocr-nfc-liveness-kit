.class public final Lic/n$a;
.super Lic/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final b:Lic/n$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lic/n$a;

    invoke-direct {v0}, Lic/n$a;-><init>()V

    sput-object v0, Lic/n$a;->b:Lic/n$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "must be a member function"

    invoke-direct {p0, v0}, Lic/n;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final b(Lma/u;)Z
    .locals 1

    const-string v0, "functionDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lma/a;->a0()Lma/o0;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
