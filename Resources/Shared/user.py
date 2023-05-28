import random as r
from faker import Faker

def cpf():
    faker = Faker('pt_BR')
    return faker.cpf()

def telefone():
    ph_no = []
    ph_no.append(r.randint(6, 9))
    for i in range(1, 10):
        ph_no.append(r.randint(0, 9))
    tel = ''.join(map(str,ph_no))
    return '({}){}-{}'.format(tel[:2], tel[:5], tel[:4])